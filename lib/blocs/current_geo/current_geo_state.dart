import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:places/helpers/distance_helper.dart';

part 'current_geo_state.freezed.dart';

@freezed
class CurrentGeoState with _$CurrentGeoState {
  const factory CurrentGeoState.init() = _Init;

  const factory CurrentGeoState.location({
    required GeoPoint currentGeo,
  }) = _Location;

  const factory CurrentGeoState.failed() = _Failed;
}
