import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_place_event.freezed.dart';

@freezed
class SearchPlaceEvent with _$SearchPlaceEvent {
    const factory SearchPlaceEvent.search(String search) = _Search;
}

