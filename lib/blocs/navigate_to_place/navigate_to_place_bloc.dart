import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:places/data/interactor/interactor.dart';
import 'navigate_to_place_event.dart';
import 'navigate_to_place_state.dart';

export 'navigate_to_place_event.dart';
export 'navigate_to_place_state.dart';

class NavigateToPlaceBloc
    extends Bloc<NavigateToPlaceEvent, NavigateToPlaceState> {
  final IPlaceInteractor _placeInteractor;

  NavigateToPlaceBloc(this._placeInteractor)
      : super(NavigateToPlaceState.init());

  @override
  Stream<NavigateToPlaceState> mapEventToState(
    NavigateToPlaceEvent event,
  ) =>
      state.map(
        init: (_) => event.maybeMap(
          navigate: (_event) async* {
            yield NavigateToPlaceState.mapSelection(
              _event.place,
            );
            _placeInteractor.addToVisitingPlaces(_event.place);
          },
          orElse: () => Stream.empty(),
        ),
        mapSelection: (value) => event.maybeMap(
          orElse: () => Stream.empty(),
        ),
      );
}
