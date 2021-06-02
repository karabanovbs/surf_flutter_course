import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:places/data/interactor/search_place_interactor.dart';
import 'search_place_event.dart';
import 'search_place_state.dart';

export 'search_place_event.dart';
export 'search_place_state.dart';

class SearchPlaceBloc extends Bloc<SearchPlaceEvent, SearchPlaceState> {
  final ISearchPlaceInteractor _searchPlaceInteractor;

  SearchPlaceBloc(this._searchPlaceInteractor) : super(SearchPlaceState.init());

  @override
  Stream<SearchPlaceState> mapEventToState(
    SearchPlaceEvent event,
  ) =>
      state.map(
        init: (_) => event.maybeMap(
          search: (_event) => _search(_event.search),
          orElse: () => Stream.empty(),
        ),
        loading: (_) => event.maybeMap(
          orElse: () => Stream.empty(),
        ),
        failure: (_) => event.maybeMap(
          search: (_event) => _search(_event.search),
          orElse: () => Stream.empty(),
        ),
        loaded: (_) => event.maybeMap(
          search: (_event) => _search(_event.search),
          orElse: () => Stream.empty(),
        ),
      );

  Stream<SearchPlaceState> _search(String search) async* {
    try {
      yield SearchPlaceState.loading();
      var places = await _searchPlaceInteractor.searchPlaces(search);
      yield SearchPlaceState.loaded(places);
    } catch (_) {
      yield SearchPlaceState.failure();
    }
  }
}
