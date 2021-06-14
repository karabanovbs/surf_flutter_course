import 'package:places/data/model/model.dart';
import 'package:places/data/repository/repository.dart';
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
  final IFiltersRepository _filtersRepository;

  final Set<String> _history = {};

  // Set<SightType> _types = {};
  // double? _radius;

  InMemorySearchPlaceInteractor(
    this._placeRepository,
    this._filtersRepository,
  );

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
        radius: await _filtersRepository.getDistance(),
        typeFilter: (await _filtersRepository.getTypes())
            .map((e) => e.toString())
            .toList(),
      ),
    );
  }

  @override
  Future<void> addTypeFilter(SightType type) async {
    var _types = await _filtersRepository.getTypes();
    _types = (_types.toSet()..add(type)).toList();
    await _filtersRepository.setTypes(_types);
  }

  @override
  Future<double?> getGeoFilters() async {
    return _filtersRepository.getDistance();
  }

  @override
  Future<List<SightType>> getTypeFilters() async {
    return _filtersRepository.getTypes();
  }

  @override
  Future<void> removeTypeFilter(SightType type) async {
    var _types = await _filtersRepository.getTypes();
    _types = (_types.toSet()..remove(type)).toList();
    await _filtersRepository.setTypes(_types);
  }

  @override
  Future<void> setGeoFilters(double? radius) async {
    return _filtersRepository.setDistance(radius);
  }

  @override
  Future<void> cleanFilters() async {
    await _filtersRepository.setDistance(null);
    var _types = await _filtersRepository.getTypes();
    _types.clear();
    await _filtersRepository.setTypes(_types);
  }
}
