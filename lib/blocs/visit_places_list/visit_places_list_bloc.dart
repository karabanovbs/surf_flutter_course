import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:places/data/interactor/interactor.dart';
import 'package:places/data/model/model.dart';

import 'visit_places_list_event.dart';
import 'visit_places_list_state.dart';

export 'visit_places_list_event.dart';
export 'visit_places_list_state.dart';

class VisitPlacesListBloc
    extends Bloc<VisitPlacesListEvent, VisitPlacesListState> {
  final IPlaceInteractor _placeInteractor;

  VisitPlacesListBloc(this._placeInteractor)
      : super(VisitPlacesListState.init());

  @override
  Stream<VisitPlacesListState> mapEventToState(VisitPlacesListEvent event) =>
      state.map(
        init: (value) => event.maybeMap(
          fetch: (value) async* {
            yield* _initialMapEventToState();
          },
          orElse: () => Stream.empty(),
        ),
        loading: (value) => event.maybeMap(
          fetch: (value) async* {
            yield* _initialMapEventToState();
          },
          orElse: () => Stream.empty(),
        ),
        failure: (value) => event.maybeMap(
          fetch: (value) async* {
            yield* _initialMapEventToState();
          },
          orElse: () => Stream.empty(),
        ),
        loaded: (value) => event.maybeMap(
          fetch: (value) async* {
            yield* _initialMapEventToState();
          },
          orElse: () => Stream.empty(),
        ),
      );

  Stream<VisitPlacesListState> _initialMapEventToState() async* {
    try {
      yield VisitPlacesListState.loading();
      final places = await _placeInteractor.getVisitPlaces();
      yield VisitPlacesListState.loaded(places);
    } catch (_) {
      yield VisitPlacesListState.failure();
      rethrow;
    }
  }
}
