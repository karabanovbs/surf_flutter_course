import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:places/data/model/model.dart';

part 'search_place_state.freezed.dart';

@freezed
class SearchPlaceState with _$SearchPlaceState {
    const factory SearchPlaceState.init() = _Init;
    const factory SearchPlaceState.loading() = _Loading;
    const factory SearchPlaceState.failure() = _Failure;
    const factory SearchPlaceState.loaded(List<Place> places) = _Loaded;
}

