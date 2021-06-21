import 'package:moor/moor.dart';

class FavoritePlace extends Table {
  IntColumn get id => integer()();

  RealColumn get lat => real()();
  RealColumn get lng => real()();
  TextColumn get placeName => text()();
  TextColumn get url => text()();
  IntColumn get placeType => integer()();
  TextColumn get description => text()();
}
