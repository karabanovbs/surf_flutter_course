import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:places/blocs/current_geo/current_geo_bloc.dart';
import 'package:places/blocs/navigate_to_place/navigate_to_place_bloc.dart';
import 'package:places/blocs/sight_favorite/sight_favorite_bloc.dart';
import 'package:places/blocs/sight_list/sight_list_bloc.dart';
import 'package:places/data/interactor/place_interactor.dart';
import 'package:places/data/model/model.dart';
import 'package:places/data/service/geo_location_service.dart';
import 'package:places/domain/sight.dart';
import 'package:places/drawing/drawing.dart';
import 'package:places/res/text_constants.dart';
import 'package:places/ui/screen/add_sight_screen/add_sight_route.dart';
import 'package:places/ui/screen/filters_screen.dart';
import 'package:places/ui/screen/sight_card.dart';
import 'package:places/ui/screen/sight_details.dart';
import 'package:places/ui/screen/sight_search_screen.dart';
import 'package:places/ui/screen/visiting_screen.dart';
import 'package:places/ui/widgets/widgets.dart';
import 'package:rxdart/rxdart.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class PlaceMap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              CurrentGeoBloc(context.read<GeoLocationService>())
                ..add(
                  CurrentGeoEvent.detect(),
                ),
        ),
        BlocProvider(
          create: (context) => NavigateToPlaceBloc(
            context.read<IPlaceInteractor>(),
          ),
        ),
        BlocProvider(
          create: (context) => SightListBloc(
            context.read<IPlaceInteractor>(),
            BlocProvider.of<CurrentGeoBloc>(context)
                .stream
                .startWith(BlocProvider.of<CurrentGeoBloc>(context).state)
                .shareValue(),
          )..add(
              SightListEvent.loadPlaces(),
            ),
        )
      ],
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).backgroundColor,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Карта',
            style: TextStyle(
              fontSize: 18,
              color: Theme.of(context).colorScheme.onBackground,
            ),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: SearchBar(
                readonly: true,
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return SightSearchScreen();
                      },
                    ),
                  );
                },
                action: SearchBarFiltersActonButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return FiltersScreen();
                        },
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ),
        body: BlocBuilder<SightListBloc, SightListState>(
          builder: (BuildContext context, state) {
            return BlocBuilder<CurrentGeoBloc, CurrentGeoState>(
                builder: (context, currentGeoState) {
              return PlacesMap(
                places: state.map(
                  init: (_) => [],
                  loading: (_) => [],
                  loaded: (_state) => _state.places,
                  failure: (_) => [],
                ),
                currentPosition: currentGeoState.maybeMap(
                  location: (_state) => Point(
                    latitude: _state.currentGeo.latitude,
                    longitude: _state.currentGeo.longitude,
                  ),
                  orElse: () => null,
                ),
                onRefresh: () {
                  BlocProvider.of<SightListBloc>(context).add(
                    SightListEvent.loadPlaces(),
                  );
                },
                onLocationDetect: () {
                  BlocProvider.of<CurrentGeoBloc>(context).add(
                    CurrentGeoEvent.detect(),
                  );
                },
              );
            });
          },
        ),
        bottomNavigationBar: AppBottomNavBar(
          index: 1,
        ),
      ),
    );
  }
}

class PlacesMap extends StatefulWidget {
  final List<Place> places;
  final Point? currentPosition;
  final void Function()? onRefresh;
  final void Function()? onLocationDetect;

  const PlacesMap({
    Key? key,
    required this.places,
    this.onRefresh,
    this.onLocationDetect,
    this.currentPosition,
  }) : super(key: key);

  @override
  _PlacesMapState createState() => _PlacesMapState();
}

class _PlacesMapState extends State<PlacesMap> {
  YandexMapController? controller;
  Place? _currentPlace;
  Placemark? _currentPlacemark;

  List<StreamSubscription> _subscriptions = [];

  BehaviorSubject<Place?> _lastTappedPlace = BehaviorSubject<Place?>();

  @override
  void initState() {
    _subscriptions.add(_lastTappedPlace
        .debounceTime(Duration(
      milliseconds: 100,
    ))
        .asyncMap((place) async {
      _currentPlace = place;
      setState(() {});
      if (place != null) {
        if (_currentPlacemark != null) {
          await controller?.removePlacemark(_currentPlacemark!);
        }

        _currentPlacemark = _createSelectedPlacemark(place);

        if (_currentPlacemark != null) {
          await controller?.addPlacemark(_currentPlacemark!);
        }
      } else {
        if (_currentPlacemark != null) {
          await controller?.removePlacemark(_currentPlacemark!);
        }
      }
    }).listen(null));

    super.initState();
  }

  @override
  void dispose() {
    _subscriptions.forEach((element) => element.cancel());
    _lastTappedPlace.close();
    super.dispose();
  }

  @override
  void didUpdateWidget(PlacesMap oldWidget) {
    if (oldWidget.places != widget.places ||
        oldWidget.currentPosition != widget.currentPosition) {
      if (oldWidget.currentPosition != widget.currentPosition &&
          widget.currentPosition != null) {
        controller?.move(
          point: widget.currentPosition!,
        );
      }

      _syncController();
    }

    super.didUpdateWidget(oldWidget);
  }

  Placemark? _createPlacemark(Place place) {
    var latitude = place.lat;
    var longitude = place.lon;

    if (latitude != null && longitude != null) {
      return Placemark(
        point: Point(
          latitude: latitude,
          longitude: longitude,
        ),
        onTap: (Placemark self, Point point) {
          print('Tapped me at ${point.latitude},${point.longitude}');
          WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
            _lastTappedPlace.add(place);
          });
        },
        style: PlacemarkStyle(
          opacity: 1,
          scale: 3,
          iconName: 'res/images/place.png',
        ),
      );
    }
  }

  Placemark? _createSelectedPlacemark(Place place) {
    var latitude = place.lat;
    var longitude = place.lon;

    if (latitude != null && longitude != null) {
      return Placemark(
        point: Point(
          latitude: latitude,
          longitude: longitude,
        ),
        onTap: (Placemark self, Point point) {
          print('Tapped me at ${point.latitude},${point.longitude}');
        },
        style: PlacemarkStyle(
          opacity: 1,
          scale: 3,
          iconName: 'res/images/selected_place.png',
          zIndex: 1,
        ),
      );
    }
  }

  Future<void> _syncController() async {
    List<Placemark> marks = [];

    if (widget.currentPosition != null) {
      marks.add(
        Placemark(
          point: widget.currentPosition!,
          onTap: (Placemark self, Point point) =>
              print('Tapped me at ${point.latitude},${point.longitude}'),
          style: PlacemarkStyle(
            opacity: 1,
            scale: 3,
            iconName: 'res/images/current_place.png',
          ),
        ),
      );
    }

    widget.places.forEach((place) {
      var placemark = _createPlacemark(place);

      if (placemark != null) {
        marks.add(
          placemark,
        );
      }
    });

    var currentMarks = (controller?.placemarks ?? []).toSet();

    for (var element in currentMarks) {
      await controller?.removePlacemark(element);
    }

    if (_currentPlace != null) {
      var placemark = _createSelectedPlacemark(_currentPlace!);

      if (placemark != null) {
        marks.add(
          placemark,
        );
      }
    }

    for (var element in marks) {
      await controller?.addPlacemark(element);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: YandexMap(
            onMapTap: (argument) {
              _lastTappedPlace.add(null);
            },
            onMapCreated: (YandexMapController yandexMapController) async {
              controller = yandexMapController;

              _syncController();
            },
          ),
        ),
        Positioned.fill(
          bottom: 16,
          right: 16,
          left: 16,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Material(
                    color: Theme.of(context).colorScheme.background,
                    shape: CircleBorder(),
                    clipBehavior: Clip.antiAlias,
                    child: IconButton(
                      icon: IconWrapper(
                        color: Theme.of(context).colorScheme.onBackground,
                        child: RefreshIcon(),
                      ),
                      iconSize: 18,
                      onPressed: widget.onRefresh,
                    ),
                  ),
                  if (_currentPlace == null)
                    AddPlaceButton(
                      label: sightListAddNewLbl.toUpperCase(),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              return AddSightScreenRoute();
                            },
                          ),
                        );
                      },
                    ),
                  Material(
                    color: Theme.of(context).colorScheme.background,
                    shape: CircleBorder(),
                    clipBehavior: Clip.antiAlias,
                    child: IconButton(
                      icon: IconWrapper(
                        color: Theme.of(context).colorScheme.onBackground,
                        child: GeolocationIcon(),
                      ),
                      iconSize: 18,
                      onPressed: () {
                        widget.onLocationDetect?.call();
                        if (widget.currentPosition != null) {
                          controller?.move(
                            point: widget.currentPosition!,
                          );
                        }
                      },
                    ),
                  )
                ],
              ),
              if (_currentPlace != null)
                Padding(
                  padding: const EdgeInsets.only(
                    top: 16,
                  ),
                  child: BlocProvider(
                    create: (BuildContext context) => SightFavoriteBloc(
                      context.read<IPlaceInteractor>(),
                      _currentPlace!,
                    )..add(
                        SightFavoriteEvent.checkFavorite(),
                      ),
                    child: BlocBuilder<CurrentGeoBloc, CurrentGeoState>(
                        builder: (context, currentGeoState) {
                      return BlocBuilder<SightFavoriteBloc, SightFavoriteState>(
                          builder: (BuildContext context, sightFavoriteState) {
                        return BlocListener<NavigateToPlaceBloc,
                            NavigateToPlaceState>(
                          listener: (context, navigateToPlaceState) {
                            navigateToPlaceState.maybeMap(
                              mapSelection: (value) async {
                                try {
                                  var placeName = _currentPlace?.placeName;
                                  var _currentPlaceLat = _currentPlace?.lat;
                                  var _currentPlaceLon = _currentPlace?.lon;

                                  if (placeName != null &&
                                      _currentPlaceLat != null &&
                                      _currentPlaceLon != null) {
                                    final coords = Coords(
                                        _currentPlaceLat, _currentPlaceLon);
                                    final title = placeName;
                                    final availableMaps =
                                        await MapLauncher.installedMaps;
                                    showModalBottomSheet(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return MapSelection(
                                          availableMaps: availableMaps,
                                          title: title,
                                          place: coords,
                                        );
                                      },
                                    );
                                  }
                                } catch (e) {
                                  print(e);
                                }
                              },
                              orElse: () {},
                            );
                          },
                          child: SightCard(
                            onNavigation: () async {
                              if (_currentPlace != null) {
                                BlocProvider.of<NavigateToPlaceBloc>(context)
                                    .add(
                                  NavigateToPlaceEvent.navigate(_currentPlace!),
                                );
                              }
                            },
                            liked: sightFavoriteState.map(
                              regular: (value) => false,
                              favorite: (value) => true,
                            ),
                            onPressed: () {
                              final id = _currentPlace!.id;

                              if (id != null) {
                                // [HeroController] works only with [PageRoute]
                                Navigator.of(context).push(
                                  PageRouteBuilder(
                                    opaque: false,
                                    pageBuilder: (context, animation,
                                        secondaryAnimation) {
                                      return BottomSheet(
                                        backgroundColor: Theme.of(context)
                                            .colorScheme
                                            .onSurface
                                            .withOpacity(0.5),
                                        onClosing: () {
                                          Navigator.of(context).maybePop();
                                        },
                                        builder: (context) {
                                          return DraggableScrollableSheet(
                                            initialChildSize: 0.9,
                                            builder: (context, _controller) {
                                              return ClipRRect(
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft:
                                                      const Radius.circular(12),
                                                  topRight:
                                                      const Radius.circular(12),
                                                ),
                                                child: SightDetails(
                                                  sight: _currentPlace!,
                                                  scrollController: _controller,
                                                ),
                                              );
                                            },
                                          );
                                        },
                                      );
                                    },
                                  ),
                                );
                              }
                            },
                            sight: _currentPlace!,
                            onLike: () async {
                              sightFavoriteState.map(
                                regular: (value) =>
                                    BlocProvider.of<SightFavoriteBloc>(context)
                                        .add(
                                  SightFavoriteEvent.addToFavorites(),
                                ),
                                favorite: (value) =>
                                    BlocProvider.of<SightFavoriteBloc>(context)
                                        .add(
                                  SightFavoriteEvent.removeFromFavorites(),
                                ),
                              );
                            },
                          ),
                        );
                      });
                    }),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
