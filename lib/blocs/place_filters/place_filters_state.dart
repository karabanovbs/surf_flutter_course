import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:places/data/model/model.dart';

part 'place_filters_state.freezed.dart';

@freezed
class PlaceFiltersState with _$PlaceFiltersState {
  const factory PlaceFiltersState({
     PlaceFilter? filter,
     int? count,
  }) = _PlaceFiltersState;
}
