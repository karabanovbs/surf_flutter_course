import 'package:places/data/model/model.dart';
import 'package:places/data/repository/repository.dart';
import 'package:places/domain/sight_type.dart';
import 'package:places/helpers/distance_helper.dart';

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

class InMemoryPlaceInteractor extends IPlaceInteractor {
  final IPlaceRepository _placeRepository;

  InMemoryPlaceInteractor(this._placeRepository);

  final Set<Place> _favoritePlaces = <Place>{};
  final Set<Place> _visitingPlaces = <Place>{};

  @override
  Future<Place> addNewPlace(Place place) async {
    return _placeRepository.postPlace(place);
  }

  @override
  Future<void> addToFavorites(Place place) async {
    _favoritePlaces.add(place);
  }

  @override
  Future<void> addToVisitingPlaces(Place place) async {
    _visitingPlaces.add(place);
  }

  @override
  Future<List<Place>> getFavoritePlaces() async {
    return _favoritePlaces.toList();
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
    _favoritePlaces.removeWhere((element) => element.id == place.id);
  }

  @override
  Future<void> addToFavoritesAll(List<Place> places) async {
    _favoritePlaces
      ..clear()
      ..addAll(places);
  }

  @override
  Future<bool> isFavoritePlace(Place place) async {
    return _favoritePlaces.contains(place);
  }
}
