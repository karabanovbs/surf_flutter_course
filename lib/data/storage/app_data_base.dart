import 'dart:io';

import 'package:moor/ffi.dart';
import 'package:moor/moor.dart';
import 'package:path_provider/path_provider.dart' as paths;
import 'package:path/path.dart' as p;
import 'package:places/data/storage/tables/tables.dart';

part 'app_data_base.g.dart';

@UseMoor(tables: [SearchHistory])
class AppDataBase extends _$AppDataBase {
  AppDataBase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Future<List<SearchHistoryData>> get getSearchHistory =>
      select(searchHistory).get();

  Future<int> saveSearchHistory(SearchHistoryCompanion entry) async {
    await this.deleteSearchHistory(entry.search.value);
    return into(searchHistory).insert(entry);
  }

  Future<int> deleteSearchHistory(String name) {
    return (delete(searchHistory)
          ..where((t) => t.search.equals(name)))
        .go();
  }

  Future<int> clearSearchHistory() {
    return delete(searchHistory).go();
  }
}

LazyDatabase _openConnection() {
  final executor = LazyDatabase(() async {
    final dataDir = await paths.getApplicationDocumentsDirectory();
    final dbFile = File(p.join(dataDir.path, 'places_app.sqlite'));
    return VmDatabase(dbFile);
  });
  return executor;
}
