import 'package:moor/moor.dart';

class SearchHistory extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get search => text()();
}
