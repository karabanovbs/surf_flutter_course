import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:places/domain/sight_type.dart';

part 'place_filters_event.freezed.dart';

@freezed
class PlaceFiltersEvent with _$PlaceFiltersEvent {
    const factory PlaceFiltersEvent.load() = _load;
    const factory PlaceFiltersEvent.invertType(SightType type) = _invertType;
    const factory PlaceFiltersEvent.clear() = _clear;
    const factory PlaceFiltersEvent.changeDistance(double distance) = _changeDistance;
}

