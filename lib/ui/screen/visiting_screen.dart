import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:places/blocs/favorite_places_list/favorite_places_list_bloc.dart';
import 'package:places/blocs/visit_places_list/visit_places_list_bloc.dart';
import 'package:places/data/interactor/place_interactor.dart';
import 'package:places/data/model/place.dart';
import 'package:places/domain/sight.dart';
import 'package:places/drawing/drawing.dart';
import 'package:places/res/text_constants.dart';
import 'package:places/ui/screen/settings_screen.dart';
import 'package:places/ui/screen/sight_card.dart';
import 'package:places/ui/screen/sight_details.dart';
import 'package:places/ui/screen/sight_list_screen.dart';
import 'package:places/ui/widgets/widgets.dart';
import 'package:provider/provider.dart';

class VisitingScreen extends StatefulWidget {
  @override
  _VisitingScreenState createState() => _VisitingScreenState();
}

class _VisitingScreenState extends State<VisitingScreen> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FavoritePlacesListBloc(
            context.read<IPlaceInteractor>(),
          )..add(FetchFavoritePlacesListEvent()),
        ),
        BlocProvider(
          create: (context) => VisitPlacesListBloc(
            context.read<IPlaceInteractor>(),
          )..add(FetchVisitPlacesListEvent()),
        )
      ],
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Theme.of(context).colorScheme.background,
            elevation: 0,
            title: Text(
              visitingScreenTitle,
              style: TextStyle(
                fontSize: 18,
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(40),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: AnimatedVisitingTabBar(
                  tabs: [
                    visitingScreenFavTabLabel,
                    visitingScreenFavHistoryTabLabel,
                  ],
                ),
              ),
            ),
          ),
          body: TabBarView(
            children: [
              BlocBuilder<FavoritePlacesListBloc, FavoritePlacesListState>(
                builder: (context, favoritePlacesListState) {
                  if (favoritePlacesListState
                      is SuccessFavoritePlacesListState) {
                    return _TabCardsList(
                      sights: favoritePlacesListState.places,
                      onReorder: (orderedSights) {
                        BlocProvider.of<FavoritePlacesListBloc>(context).add(
                          ReorderFavoritePlacesListEvent(
                            orderedSights.cast<Place>(),
                          ),
                        );
                      },
                      cardBuilder: (sight) {
                        return FavoriteSightCard(
                          sight: sight,
                          onRemove: () {
                            BlocProvider.of<FavoritePlacesListBloc>(context)
                                .add(
                              RemoveFavoritePlacesListEvent(sight as Place),
                            );
                          },
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => SightDetails(
                                  sight: (sight as Place),
                                ),
                              ),
                            );
                          },
                          onDate: () async {
                            var now = DateTime.now();
                            var minDate = now;
                            var maxDate = now.add(
                              Duration(
                                days: 365,
                              ),
                            );
                            DateTime? date;
                            if (Platform.isAndroid) {
                              date = await showDatePicker(
                                context: context,
                                initialDate: now,
                                firstDate: minDate,
                                lastDate: maxDate,
                              );
                            } else {
                              await showModalBottomSheet(
                                context: context,
                                builder: (context) => SizedBox(
                                  height: 240,
                                  child: CupertinoDatePicker(
                                    minimumDate: minDate,
                                    maximumDate: maxDate,
                                    initialDateTime: now,
                                    mode: CupertinoDatePickerMode.date,
                                    onDateTimeChanged: (value) {
                                      date = value;
                                    },
                                  ),
                                ),
                              );
                            }
                          },
                        );
                      },
                    );
                  }

                  return Center(
                    child: AppLoader(),
                  );
                },
              ),
              BlocBuilder<VisitPlacesListBloc, VisitPlacesListState>(
                builder: (context, visitPlacesListState) {
                  if (visitPlacesListState is SuccessVisitPlacesListState) {
                    return _TabCardsList(
                      sights: visitPlacesListState.places,
                      cardBuilder: (sight) {
                        return FavoriteHistorySightCard(
                          sight: sight,
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => SightDetails(
                                  sight: sight as Place,
                                ),
                              ),
                            );
                          },
                        );
                      },
                    );
                  }
                  return Center(
                    child: AppLoader(),
                  );
                },
              )
            ],
          ),
          bottomNavigationBar: AppBottomNavBar(
            index: 2,
          ),
        ),
      ),
    );
  }
}

class _TabCardsList extends StatelessWidget {
  final List<Sight> sights;
  final void Function(List<Sight> sights)? onReorder;
  final Widget Function(Sight sight) cardBuilder;

  const _TabCardsList({
    Key? key,
    this.sights = const [],
    required this.cardBuilder,
    this.onReorder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (sights.length > 0) {
      return ListView.separated(
        padding: const EdgeInsets.only(
          top: 16,
          bottom: 16,
          right: bodyPaddingRight,
          left: bodyPaddingLeft,
        ),
        itemCount: sights.length,
        itemBuilder: (context, index) {
          var sight = sights[index];
          return LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              if (onReorder != null) {
                return DragTarget<Sight>(
                  onWillAccept: (data) {
                    if (data != null) {
                      var newPos = sights.indexOf(sight);
                      var dragIndex = sights.indexOf(data);
                      var tmp = sight;
                      sights[newPos] = data;
                      sights[dragIndex] = tmp;

                      onReorder?.call(sights);
                    }
                    return true;
                  },
                  onAccept: (data) {},
                  builder: (BuildContext context, List<Object?> candidateData,
                      List<dynamic> rejectedData) {
                    return LongPressDraggable(
                      data: sight,
                      feedback: ConstrainedBox(
                        constraints: constraints,
                        child: Transform.scale(
                          scale: 1.05,
                          child: cardBuilder(sight),
                        ),
                      ),
                      child: Opacity(
                        opacity: candidateData.contains(sight) ? 0 : 1,
                        child: cardBuilder(sight),
                      ),
                    );
                  },
                );
              }
              return cardBuilder(sight);
            },
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: cardPaddingBottom,
          );
        },
      );
    }
    return _EmptyListPlaceholder(
      icon: CardIcon(),
      message: visitingScreenFavNotFoundLabel,
    );
  }
}

class _EmptyListPlaceholder extends StatelessWidget {
  final String message;
  final Widget icon;

  const _EmptyListPlaceholder({
    Key? key,
    required this.message,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 53),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 64,
            height: 64,
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.onSurface,
                BlendMode.srcIn,
              ),
              child: icon,
            ),
          ),
          SizedBox(
            height: 32,
          ),
          Text(
            empty,
            style: Theme.of(context).textTheme.headline3!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            message,
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class AppBottomNavBar extends StatelessWidget {
  final int? index;

  const AppBottomNavBar({Key? key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,

      /// выглядит как дичь, нужно переделывать без навигации
      onTap: (value) {
        switch (value) {
          case 0:
            Navigator.of(context).pushReplacement(
              PageRouteBuilder(
                pageBuilder: (BuildContext context, Animation<double> animation,
                    Animation<double> secondaryAnimation) {
                  return SightListScreen();
                },
              ),
            );
            break;
          case 1:
            break;
          case 2:
            Navigator.of(context).pushReplacement(
              PageRouteBuilder(
                pageBuilder: (BuildContext context, Animation<double> animation,
                    Animation<double> secondaryAnimation) {
                  return VisitingScreen();
                },
              ),
            );
            break;
          case 3:
            Navigator.of(context).pushReplacement(
              PageRouteBuilder(
                pageBuilder: (BuildContext context, Animation<double> animation,
                    Animation<double> secondaryAnimation) {
                  return SettingsScreen();
                },
              ),
            );
            break;
          default:
        }
      },
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: SizedBox(
            height: 24,
            width: 24,
            child: IconWrapper(
              child: ListIcon(),
            ),
          ),
          label: '',
          activeIcon: SizedBox(
            height: 24,
            width: 24,
            child: IconWrapper(
              child: ListFullIcon(),
            ),
          ),
        ),
        BottomNavigationBarItem(
          icon: SizedBox(
            height: 24,
            width: 24,
            child: IconWrapper(
              child: MapIcon(),
            ),
          ),
          label: '',
          activeIcon: SizedBox(
            height: 24,
            width: 24,
            child: IconWrapper(
              child: MapFullIcon(),
            ),
          ),
        ),
        BottomNavigationBarItem(
          icon: SizedBox(
            height: 24,
            width: 24,
            child: IconWrapper(
              child: HeartIcon(),
            ),
          ),
          label: '',
          activeIcon: SizedBox(
            height: 24,
            width: 24,
            child: IconWrapper(
              child: HeartFullIcon(),
            ),
          ),
        ),
        BottomNavigationBarItem(
          icon: SizedBox(
            height: 24,
            width: 24,
            child: IconWrapper(
              child: SettingsIcon(),
            ),
          ),
          label: '',
          activeIcon: SizedBox(
            height: 24,
            width: 24,
            child: IconWrapper(
              child: SettingsFullIcon(),
            ),
          ),
        ),
      ],
      currentIndex: index!,
      selectedItemColor: Theme.of(context).colorScheme.onBackground,
      unselectedItemColor: Theme.of(context).colorScheme.onBackground,
    );
  }
}
