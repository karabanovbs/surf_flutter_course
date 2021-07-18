import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:places/data/model/model.dart';

part 'visit_places_list_state.freezed.dart';

@freezed
class VisitPlacesListState with _$VisitPlacesListState {
    const factory VisitPlacesListState.init() = _Init;
    const factory VisitPlacesListState.loading() = _Loading;
    const factory VisitPlacesListState.failure() = _Failure;
    const factory VisitPlacesListState.loaded(List<Place> places) = _Loaded;
}

