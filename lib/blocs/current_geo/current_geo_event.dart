import 'package:freezed_annotation/freezed_annotation.dart';

part 'current_geo_event.freezed.dart';

@freezed
class CurrentGeoEvent with _$CurrentGeoEvent {
    const factory CurrentGeoEvent.detect() = _Detect;
}

