import 'package:places/redux/reducers/search_place_reducers.dart';
import 'package:places/redux/state/app_state.dart';

AppState appStateReducer(AppState state, action) => new AppState(
      searchPlaceHistoryState:
          searchPlaceHistoryReducers(state.searchPlaceHistoryState, action),
      searchPlaceState: searchPlaceReducers(state.searchPlaceState, action),
    );
