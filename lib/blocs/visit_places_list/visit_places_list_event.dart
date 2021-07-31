import 'package:freezed_annotation/freezed_annotation.dart';

part 'visit_places_list_event.freezed.dart';

@freezed
class VisitPlacesListEvent with _$VisitPlacesListEvent {
    const factory VisitPlacesListEvent.fetch() = _Fetch;
    const factory VisitPlacesListEvent.remove() = _Remove;
}

