import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:places/domain/sight_type.dart';

part 'place_filter.freezed.dart';

@freezed
abstract class PlaceFilter with _$PlaceFilter {
  factory PlaceFilter({
    List<SightType>? types,
    double? distance
  }) = _PlaceFilter;
}