import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_place_history_state.freezed.dart';

@freezed
class SearchPlaceHistoryState with _$SearchPlaceHistoryState {
  const factory SearchPlaceHistoryState.init() = _Init;

  const factory SearchPlaceHistoryState.loaded(List<String> searchHistory) =
      _Loaded;

  const factory SearchPlaceHistoryState.loading() = _Loading;

  const factory SearchPlaceHistoryState.failure() = _Failure;
}
