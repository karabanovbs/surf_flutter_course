import 'package:flutter/cupertino.dart';
import 'package:places/redux/state/search_place_state.dart';

@immutable
class AppState {
  final ISearchPlaceHistoryState searchPlaceHistoryState;
  final ISearchPlaceState searchPlaceState;

  AppState({searchPlaceHistoryState, searchPlaceState})
      : this.searchPlaceHistoryState =
            searchPlaceHistoryState ?? SearchPlaceHistoryInitState(),
        this.searchPlaceState = searchPlaceState ?? SearchPlaceInitState();
}
