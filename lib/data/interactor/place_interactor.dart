import 'package:places/data/model/model.dart';
import 'package:places/data/repository/repository.dart';
import 'package:places/data/storage/app_data_base.dart';
import 'package:places/domain/sight_type.dart';
import 'package:places/helpers/distance_helper.dart';
import 'dart:collection';
import 'package:collection/collection.dart';

abstract class IPlaceInteractor {
  Future<List<Place>> getPlaces(int? radius, List<SightType> categories);

  Future<Place> getPlaceDetails(int id);

  Future<List<Place>> getFavoritePlaces();

  Future<void> addToFavorites(Place place);

  Future<void> addToFavoritesAll(List<Place> places);

  Future<void> removeFromFavorites(Place place);

  Future<List<Place>> getVisitPlaces();

  Future<void> addToVisitingPlaces(Place place);

  Future<Place> addNewPlace(Place place);

  Future<bool> isFavoritePlace(Place place);
}

class MoorPlaceInteractor extends IPlaceInteractor {
  final IPlaceRepository _placeRepository;
  final AppDataBase _appDataBase;

  MoorPlaceInteractor(
    this._placeRepository,
    this._appDataBase,
  );

  final Set<Place> _visitingPlaces = <Place>{};

  @override
  Future<Place> addNewPlace(Place place) async {
    return _placeRepository.postPlace(place);
  }

  @override
  Future<void> addToFavorites(Place place) async {
    await _appDataBase.addToFavorite(FavoritePlaceCompanion.insert(
      id: place.id ?? 0,
      lat: place.lat ?? 0,
      lng: place.lng ?? 0,
      placeName: place.placeName ?? '',
      url: place.urls.firstOrNull ?? '',
      placeType: place.type.type.index,
      description: place.description ?? '',
    ));
  }

  @override
  Future<void> addToVisitingPlaces(Place place) async {
    _visitingPlaces.add(place);
  }

  @override
  Future<List<Place>> getFavoritePlaces() async {
    return _appDataBase.getFavoritePlaces.then((data) => data
        .map((e) => Place(
              id: e.id,
              lat: e.lat,
              lng: e.lng,
              placeName: e.placeName,
              urls: [e.url],
              placeType: SightType(ESightType.values[e.placeType]),
              description: e.description,
            ))
        .toList());
  }

  @override
  Future<Place> getPlaceDetails(int id) {
    return _placeRepository.getPlace(id);
  }

  @override
  Future<List<Place>> getPlaces(int? radius, List<SightType> categories) async {
    var currentGeo = GeoPoint(latitude: 0, longitude: 0);
    return (await _placeRepository.getPlaces())
        .where((element) =>
            categories.contains(element.placeType) || categories.isEmpty)
        .where(
          (element) => radius != null
              ? arePointsBetween(
                  GeoPoint(
                      latitude: element.lat ?? 0, longitude: element.lat ?? 0),
                  currentGeo,
                  0,
                  radius.toDouble(),
                )
              : true,
        )
        .toList()
          ..sort(
            (a, b) => (distanceInKmBetweenEarthCoordinates(
                    GeoPoint(latitude: a.lat ?? 0, longitude: a.lat ?? 0),
                    currentGeo)
                .compareTo(
              distanceInKmBetweenEarthCoordinates(
                  GeoPoint(latitude: b.lat ?? 0, longitude: b.lng ?? 0),
                  currentGeo),
            )),
          );
  }

  @override
  Future<List<Place>> getVisitPlaces() async {
    return _visitingPlaces.toList();
  }

  @override
  Future<void> removeFromFavorites(Place place) async {
    await _appDataBase.removeFromFavorite(place.id ?? 0);
  }

  @override
  Future<void> addToFavoritesAll(List<Place> places) async {
    await Future.wait([
      for (var place in places) this.addToFavorites(place),
    ]);
  }

  @override
  Future<bool> isFavoritePlace(Place place) async {
    return await _appDataBase
        .getFavorite(place.id ?? 0)
        .then((value) => value != null);
  }
}
