import 'package:places/data/interactor/interactor.dart';
import 'package:places/redux/actions/actions.dart';
import 'package:places/redux/state/app_state.dart';
import 'package:redux/redux.dart';

class SearchPlaceMiddleware extends MiddlewareClass<AppState> {
  final ISearchPlaceInteractor _searchPlaceInteractor;

  SearchPlaceMiddleware(this._searchPlaceInteractor);

  @override
  call(Store<AppState> store, action, next) {
    if (action is SearchPlaceLoadHistoryAction) {
      _searchPlaceInteractor
          .getHistory()
          .then(
            (value) => next(
              SearchPlaceLoadHistorySuccessAction(value),
            ),
          )
          .catchError(
            (_) => next(
              SearchPlaceLoadHistoryFailureAction(),
            ),
          );
    }

    if (action is SearchPlaceClearHistoryFailureAction) {
      _searchPlaceInteractor.clearHistory().then(
            (value) async =>
                this.call(store, SearchPlaceLoadHistoryAction(), next),
          );
    }

    if (action is SearchPlaceRemoveHistoryFailureAction) {
      _searchPlaceInteractor.removeHistory(action.value).then(
            (value) async =>
                this.call(store, SearchPlaceLoadHistoryAction(), next),
          );
    }

    if (action is SearchPlaceSearchAction) {
      _searchPlaceInteractor
          .searchPlaces(action.search)
          .then(
            (value) => next(
              SearchPlaceSearchSuccessAction(value),
            ),
          )
          .catchError(
            (_) => next(
              SearchPlaceSearchFailureAction(),
            ),
          );
    }
  }
}
