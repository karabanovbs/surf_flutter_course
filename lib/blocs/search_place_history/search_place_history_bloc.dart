import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:places/data/interactor/interactor.dart';
import 'search_place_history_event.dart';
import 'search_place_history_state.dart';

export 'search_place_history_event.dart';
export 'search_place_history_state.dart';

class SearchPlaceHistoryBloc
    extends Bloc<SearchPlaceHistoryEvent, SearchPlaceHistoryState> {
  final ISearchPlaceInteractor _searchPlaceInteractor;

  SearchPlaceHistoryBloc(this._searchPlaceInteractor)
      : super(SearchPlaceHistoryState.init());

  @override
  Stream<SearchPlaceHistoryState> mapEventToState(
    SearchPlaceHistoryEvent event,
  ) =>
      state.map(
        init: (_) => event.maybeMap(
          load: (value) => _load(),
          orElse: () => Stream.empty(),
        ),
        loaded: (_) => event.maybeMap(
          load: (_) => _load(),
          clear: (_) async* {
            await _searchPlaceInteractor.clearHistory();
            this.add(SearchPlaceHistoryEvent.load());
          },
          remove: (_event) async* {
            await _searchPlaceInteractor.removeHistory(_event.value);
            this.add(SearchPlaceHistoryEvent.load());
          },
          orElse: () => Stream.empty(),
        ),
        loading: (_) => event.maybeMap(
          orElse: () => Stream.empty(),
        ),
        failure: (_) => event.maybeMap(
          load: (_) => _load(),
          orElse: () => Stream.empty(),
        ),
      );

  Stream<SearchPlaceHistoryState> _load() async* {
    try {
      yield SearchPlaceHistoryState.loading();
      var history = await _searchPlaceInteractor.getHistory();
      yield SearchPlaceHistoryState.loaded(history);
    } catch (_) {
      yield SearchPlaceHistoryState.failure();
    }
  }
}
