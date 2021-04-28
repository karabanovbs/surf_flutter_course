import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:places/data/interactor/interactor.dart';
import 'package:places/data/model/model.dart';

part 'favorite_places_list_event.dart';

part 'favorite_places_list_state.dart';

class FavoritePlacesListBloc
    extends Bloc<FavoritePlacesListEvent, FavoritePlacesListState> {
  final IPlaceInteractor _placeInteractor;

  FavoritePlacesListBloc(
    this._placeInteractor,
  ) : super(InitialFavoritePlacesListState());

  @override
  Stream<FavoritePlacesListState> mapEventToState(
      FavoritePlacesListEvent event) async* {
    final _state = state;
    if (_state is InitialFavoritePlacesListState) {
      yield* _initialMapEventToState(_state, event);
    }

    if (_state is LoadingFavoritePlacesListState) {
      yield* _loadingMapEventToState(_state, event);
    }

    if (_state is SuccessFavoritePlacesListState) {
      yield* _successMapEventToState(_state, event);
    }

    if (_state is FailureFavoritePlacesListState) {
      yield* _failureMapEventToState(_state, event);
    }
  }

  Stream<FavoritePlacesListState> _initialMapEventToState(
      InitialFavoritePlacesListState state,
      FavoritePlacesListEvent event) async* {
    if (event is FetchFavoritePlacesListEvent) {
      try {
        yield LoadingFavoritePlacesListState();
        final favorite = await _placeInteractor.getFavoritePlaces();
        yield SuccessFavoritePlacesListState(favorite);
      } catch (_) {
        yield FailureFavoritePlacesListState();
        rethrow;
      }
    }
  }

  Stream<FavoritePlacesListState> _loadingMapEventToState(
      LoadingFavoritePlacesListState state,
      FavoritePlacesListEvent event) async* {}

  Stream<FavoritePlacesListState> _successMapEventToState(
      SuccessFavoritePlacesListState state,
      FavoritePlacesListEvent event) async* {
    if (event is RemoveFavoritePlacesListEvent) {
      await _placeInteractor.removeFromFavorites(event.place);
      final favorite = await _placeInteractor.getFavoritePlaces();
      yield SuccessFavoritePlacesListState(favorite);
    }

    if (event is ReorderFavoritePlacesListEvent) {
      yield SuccessFavoritePlacesListState(event.places);
    }
  }

  Stream<FavoritePlacesListState> _failureMapEventToState(
      FailureFavoritePlacesListState state,
      FavoritePlacesListEvent event) async* {}
}
