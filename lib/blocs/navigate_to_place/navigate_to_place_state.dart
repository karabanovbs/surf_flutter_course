import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:places/data/model/model.dart';

part 'navigate_to_place_state.freezed.dart';

@freezed
class NavigateToPlaceState with _$NavigateToPlaceState {
    const factory NavigateToPlaceState.init() = _Init;
    const factory NavigateToPlaceState.mapSelection(Place place) = _MapSelection;
}

