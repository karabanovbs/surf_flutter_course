import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:places/blocs/current_geo/current_geo_bloc.dart';
import 'package:places/data/interactor/place_interactor.dart';
import 'package:places/helpers/distance_helper.dart';
import 'package:rxdart/rxdart.dart';
import 'sight_list_event.dart';
import 'sight_list_state.dart';

export 'sight_list_event.dart';
export 'sight_list_state.dart';

class SightListBloc extends Bloc<SightListEvent, SightListState> {
  final IPlaceInteractor _interactor;
  final ValueStream<CurrentGeoState> _currentGeo;

  SightListBloc(
    this._interactor,
    this._currentGeo,
  ) : super(
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
      var sights = await _interactor.getPlaces(
        _currentGeo.valueOrNull?.maybeMap(
          location: (value) => value.currentGeo,
          orElse: () => null,
        ),
        10,
        [],
      );
      yield SightListState.loaded(sights);
    } catch (e) {
      print(e);
      yield SightListState.failure();
    }
  }
}
