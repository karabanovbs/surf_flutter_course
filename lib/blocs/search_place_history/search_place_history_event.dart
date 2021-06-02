import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_place_history_event.freezed.dart';

@freezed
class SearchPlaceHistoryEvent with _$SearchPlaceHistoryEvent {
    const factory SearchPlaceHistoryEvent.load() = _Load;
    const factory SearchPlaceHistoryEvent.clear() = _Clear;
    const factory SearchPlaceHistoryEvent.remove(String value) = _Remove;
}

