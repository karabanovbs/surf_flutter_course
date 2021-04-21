import 'package:places/data/model/model.dart';
import 'package:places/data/repository/repository.dart';
import 'package:places/dio_client.dart';
import 'package:places/domain/sight_type.dart';

abstract class ISearchPlaceInteractor {
  Future<void> setGeoFilters(double? radius);

  Future<void> cleanFilters();

  Future<double?> getGeoFilters();

  Future<void> addTypeFilter(SightType type);

  Future<void> removeTypeFilter(SightType type);

  Future<List<SightType>> getTypeFilters();

  Future<List<String>> getHistory();

  Future<void> clearHistory();

  Future<void> removeHistory(String name);

  Future<List<Place>> searchPlaces([String? name]);
}

class InMemorySearchPlaceInteractor extends ISearchPlaceInteractor {
  final IPlaceRepository _placeRepository;

  final Set<String> _history = {};
  Set<SightType> _types = {};
  double? _radius;

  InMemorySearchPlaceInteractor(this._placeRepository);

  @override
  Future<void> clearHistory() async {
    _history.clear();
  }

  @override
  Future<List<String>> getHistory() async {
    return _history.toList();
  }

  @override
  Future<void> removeHistory(String name) async {
    _history.remove(name);
  }

  @override
  Future<List<Place>> searchPlaces([String? name]) async {
    if (name != null) {
      _history.add(name);
    }

    return _placeRepository.postFilteredPlaces(
      PlacesFilter(
        nameFilter: name,
        lng: 0,
        lat: 0,
        radius: _radius,
        typeFilter: _types.map((e) => e.toString()).toList(),
      ),
    );
  }

  @override
  Future<void> addTypeFilter(SightType type) async {
    _types.add(type);
  }

  @override
  Future<double?> getGeoFilters() async {
    return _radius;
  }

  @override
  Future<List<SightType>> getTypeFilters() async {
    return _types.toList();
  }

  @override
  Future<void> removeTypeFilter(SightType type) async {
    _types.remove(type);
  }

  @override
  Future<void> setGeoFilters(double? radius) async {
    _radius = radius;
  }

  @override
  Future<void> cleanFilters() async {
    _radius = null;
    _types.clear();
  }
}

ISearchPlaceInteractor searchPlaceInteractor = InMemorySearchPlaceInteractor(
  DioPlaceRepository(dioClient),
);
