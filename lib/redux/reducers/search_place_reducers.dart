import 'package:places/redux/actions/actions.dart';
import 'package:places/redux/state/search_place_state.dart';
import 'package:redux/redux.dart';

final searchPlaceHistoryReducers = combineReducers<ISearchPlaceHistoryState>([
  new TypedReducer<ISearchPlaceHistoryState, SearchPlaceLoadHistoryAction>(
      _loadHistory),
  new TypedReducer<ISearchPlaceHistoryState,
      SearchPlaceLoadHistorySuccessAction>(_loadHistorySuccess),
  new TypedReducer<ISearchPlaceHistoryState,
      SearchPlaceLoadHistoryFailureAction>(_loadHistoryFailure),
]);

ISearchPlaceHistoryState _loadHistory(
    ISearchPlaceHistoryState state, SearchPlaceLoadHistoryAction action) {
  if (state is SearchPlaceHistoryInitState ||
      state is SearchPlaceHistoryFailureState) {
    return SearchPlaceHistoryLoadingState();
  } else {
    return state;
  }
}

ISearchPlaceHistoryState _loadHistorySuccess(ISearchPlaceHistoryState state,
    SearchPlaceLoadHistorySuccessAction action) {
  return SearchPlaceHistoryState(
    searchHistory: action.value,
  );
}

ISearchPlaceHistoryState _loadHistoryFailure(ISearchPlaceHistoryState state,
    SearchPlaceLoadHistoryFailureAction action) {
  return SearchPlaceHistoryFailureState();
}

final searchPlaceReducers = combineReducers<ISearchPlaceState>([
  new TypedReducer<ISearchPlaceState, SearchPlaceSearchAction>(_search),
  new TypedReducer<ISearchPlaceState, SearchPlaceSearchSuccessAction>(
      _searchSuccess),
  new TypedReducer<ISearchPlaceState, SearchPlaceSearchFailureAction>(
      _searchFailure),
]);

ISearchPlaceState _search(
    ISearchPlaceState state, SearchPlaceSearchAction action) {
  return SearchPlaceLoadingState();
}

ISearchPlaceState _searchSuccess(
    ISearchPlaceState state, SearchPlaceSearchSuccessAction action) {
  return SearchPlaceState(result: action.value);
}

ISearchPlaceState _searchFailure(
    ISearchPlaceState state, SearchPlaceSearchFailureAction action) {
  return SearchPlaceFailureState();
}
