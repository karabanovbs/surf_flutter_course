import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:places/data/interactor/place_interactor.dart';
import 'sight_list_event.dart';
import 'sight_list_state.dart';

export 'sight_list_event.dart';
export 'sight_list_state.dart';

class SightListBloc extends Bloc<SightListEvent, SightListState> {
  final IPlaceInteractor _interactor;

  SightListBloc(this._interactor)
      : super(
          SightListState.init(),
        );

  @override
  Stream<SightListState> mapEventToState(
    SightListEvent event,
  ) =>
      state.map(
        init: (_state) => event.maybeMap(
          loadPlaces: (value) => _loadPlaces(),
          orElse: () => Stream.empty(),
        ),
        loading: (_state) => event.maybeMap(
          orElse: () => Stream.empty(),
        ),
        loaded: (_state) => event.maybeMap(
          loadPlaces: (value) => _loadPlaces(),
          orElse: () => Stream.empty(),
        ),
        failure: (_state) => event.maybeMap(
          loadPlaces: (value) => _loadPlaces(),
          orElse: () => Stream.empty(),
        ),
      );

  Stream<SightListState> _loadPlaces() async* {
    try {
      yield SightListState.loading();
      var sights = await _interactor.getPlaces(null, []);
      yield SightListState.loaded(sights);
    } catch (_) {
      yield SightListState.failure();
    }
  }
}
