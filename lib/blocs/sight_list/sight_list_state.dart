import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:places/data/model/model.dart';

part 'sight_list_state.freezed.dart';

@freezed
class SightListState with _$SightListState {
    const factory SightListState.init() = _Init;
    const factory SightListState.loading() = _Loading;
    const factory SightListState.loaded(List<Place> places) = _Loaded;
    const factory SightListState.failure() = _Failure;
}

