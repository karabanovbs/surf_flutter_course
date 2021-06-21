import 'dart:io';

import 'package:moor/ffi.dart';
import 'package:moor/moor.dart';
import 'package:path_provider/path_provider.dart' as paths;
import 'package:path/path.dart' as p;
import 'package:places/data/storage/tables/tables.dart';

part 'app_data_base.g.dart';

@UseMoor(tables: [SearchHistory, FavoritePlace, VisitedPlace])
class AppDataBase extends _$AppDataBase {
  AppDataBase() : super(_openConnection());

  @override
  int get schemaVersion => 7;

  Future<List<SearchHistoryData>> get getSearchHistory =>
      select(searchHistory).get();

  Future<int> saveSearchHistory(SearchHistoryCompanion entry) async {
    await this.deleteSearchHistory(entry.search.value);
    return into(searchHistory).insert(entry);
  }

  Future<int> deleteSearchHistory(String name) {
    return (delete(searchHistory)..where((t) => t.search.equals(name))).go();
  }

  Future<int> clearSearchHistory() {
    return delete(searchHistory).go();
  }

  Future<List<FavoritePlaceData>> get getFavoritePlaces =>
      select(favoritePlace).get();

  Future<FavoritePlaceData?> getFavorite(int id) async {
    return (select(favoritePlace)..where((tbl) => tbl.id.equals(id)))
        .get()
        .then((value) {
      if (value.isNotEmpty) {
        return value.first;
      }
      return null;
    });
  }

  Future<int> addToFavorite(FavoritePlaceCompanion entry) async {
    return into(favoritePlace).insert(entry);
  }

  Future<int> removeFromFavorite(int id) async {
    return (delete(favoritePlace)..where((t) => t.id.equals(id))).go();
  }

  Future<int> clearFavorite() async {
    return delete(favoritePlace).go();
  }

  Future<List<VisitedPlaceData>> get getVisitedPlaces =>
      select(visitedPlace).get();

  Future<VisitedPlaceData?> getVisited(int id) async {
    return (select(visitedPlace)..where((tbl) => tbl.id.equals(id)))
        .get()
        .then((value) {
      if (value.isNotEmpty) {
        return value.first;
      }
      return null;
    });
  }

  Future<int> addToVisited(VisitedPlaceCompanion entry) async {
    return into(visitedPlace).insert(entry);
  }

  Future<int> removeFromVisited(int id) async {
    return (delete(visitedPlace)..where((t) => t.id.equals(id))).go();
  }

  Future<int> clearVisited() async {
    return delete(visitedPlace).go();
  }

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onUpgrade: (m, from, to) async {
          if (to == 7) {
            await m.createTable(visitedPlace);
          }
        },
      );
}

LazyDatabase _openConnection() {
  final executor = LazyDatabase(() async {
    final dataDir = await paths.getApplicationDocumentsDirectory();
    final dbFile = File(p.join(dataDir.path, 'places_app.sqlite'));
    return VmDatabase(
      dbFile,
      logStatements: true,
    );
  });
  return executor;
}
