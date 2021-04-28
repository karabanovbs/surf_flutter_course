import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:places/data/interactor/interactor.dart';
import 'package:places/data/model/model.dart';

part 'visit_places_list_event.dart';

part 'visit_places_list_state.dart';

class VisitPlacesListBloc
    extends Bloc<VisitPlacesListEvent, VisitPlacesListState> {
  final IPlaceInteractor _placeInteractor;

  VisitPlacesListBloc(this._placeInteractor)
      : super(InitialVisitPlacesListState());

  @override
  Stream<VisitPlacesListState> mapEventToState(
      VisitPlacesListEvent event) async* {
    final _state = state;
    if (_state is InitialVisitPlacesListState) {
      yield* _initialMapEventToState(_state, event);
    }

    if (_state is LoadingVisitPlacesListState) {
      yield* _loadingMapEventToState(_state, event);
    }

    if (_state is SuccessVisitPlacesListState) {
      yield* _successMapEventToState(_state, event);
    }

    if (_state is FailureVisitPlacesListState) {
      yield* _failureMapEventToState(_state, event);
    }
  }

  Stream<VisitPlacesListState> _initialMapEventToState(
      InitialVisitPlacesListState state, VisitPlacesListEvent event) async* {
    if (event is LoadingVisitPlacesListState) {
      try {
        yield LoadingVisitPlacesListState();
        final places = await _placeInteractor.getVisitPlaces();
        yield SuccessVisitPlacesListState(places);
      } catch (_) {
        yield FailureVisitPlacesListState();
        rethrow;
      }
    }
  }

  Stream<VisitPlacesListState> _loadingMapEventToState(
      LoadingVisitPlacesListState state, VisitPlacesListEvent event) async* {}

  Stream<VisitPlacesListState> _successMapEventToState(
      SuccessVisitPlacesListState state, VisitPlacesListEvent event) async* {}

  Stream<VisitPlacesListState> _failureMapEventToState(
      FailureVisitPlacesListState state, VisitPlacesListEvent event) async* {}
}
