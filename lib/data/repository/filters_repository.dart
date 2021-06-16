import 'package:places/data/storage/storage_base.dart';
import 'package:places/domain/sight_type.dart';

abstract class IFiltersRepository {
  Future<void> setDistance(double? distance);

  Future<double?> getDistance();

  Future<List<SightType>> getTypes();

  Future<void> setTypes(List<SightType> types);
}

final _distanceKey = 'filter_distance';
final _typesKey = 'filter_types';

class FiltersRepository extends IFiltersRepository {
  final IDataStorage dataStorage;

  FiltersRepository(this.dataStorage);

  @override
  Future<double?> getDistance() {
    return dataStorage.getDouble(_distanceKey);
  }

  @override
  Future<List<SightType>> getTypes() {
    return dataStorage.getStringList(_typesKey).then(
      (value) {
        value = value ?? [];
        return value.map(
          (e) {
            return SightType(ESightType.values[int.parse(e)]);
          },
        ).toList();
      },
    );
  }

  @override
  Future<void> setDistance(double? distance) {
    if (distance != null) {
      return dataStorage.setDouble(
        _distanceKey,
        distance,
      );
    } else {
      return dataStorage.removeKey(
        _distanceKey,
      );
    }
  }

  @override
  Future<void> setTypes(List<SightType> types) {
    return dataStorage.setStringList(
      _typesKey,
      types.map((e) {
        return e.type.index.toString();
      }).toList(),
    );
  }
}
