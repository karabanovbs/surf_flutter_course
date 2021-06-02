import 'package:freezed_annotation/freezed_annotation.dart';

part 'sight_list_event.freezed.dart';

@freezed
class SightListEvent with _$SightListEvent {
    const factory SightListEvent.loadPlaces() = _LoadPlaces;
}


