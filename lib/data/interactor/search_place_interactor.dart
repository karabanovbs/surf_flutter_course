import 'package:flutter/cupertino.dart';
import 'package:moor/moor.dart';
import 'package:places/data/model/model.dart';
import 'package:places/data/repository/repository.dart';
import 'package:places/data/storage/app_data_base.dart';
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
  final AppDataBase _appDataBase;

  InMemorySearchPlaceInteractor(
    this._placeRepository,
    this._filtersRepository,
    this._appDataBase,
  );

  @override
  Future<void> clearHistory() async {
    await _appDataBase.clearSearchHistory();
  }

  @override
  Future<List<String>> getHistory() async {
    return _appDataBase.getSearchHistory.then(
      (data) => data.map((e) => e.search).toList(),
    );
  }

  @override
  Future<void> removeHistory(String name) async {
    await _appDataBase.deleteSearchHistory(name);
  }

  @override
  Future<List<Place>> searchPlaces([String? name]) async {
    if (name != null) {
      await _appDataBase.saveSearchHistory(
        SearchHistoryCompanion(
          search: Value(name),
        ),
      );
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
