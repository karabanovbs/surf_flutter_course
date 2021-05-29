import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:places/data/interactor/interactor.dart';
import 'package:places/data/model/model.dart';
import 'sight_favorite_event.dart';
import 'sight_favorite_state.dart';

export 'sight_favorite_event.dart';
export 'sight_favorite_state.dart';

class SightFavoriteBloc extends Bloc<SightFavoriteEvent, SightFavoriteState> {
  final IPlaceInteractor _interactor;
  final Place _place;

  SightFavoriteBloc(
    this._interactor,
    this._place,
  ) : super(
          SightFavoriteState.regular(_place),
        );

  @override
  Stream<SightFavoriteState> mapEventToState(
    SightFavoriteEvent event,
  ) =>
      state.map(
        regular: (_) => event.maybeMap(
          checkFavorite: (_) => _checkFavorite(),
          addToFavorites: (_) async* {
            try {
              yield SightFavoriteState.favorite(_place);
              await _interactor.addToFavorites(_place);
              this.add(SightFavoriteEvent.checkFavorite());
            } catch (_) {
              yield SightFavoriteState.regular(_place);
            }
          },
          orElse: () => Stream.empty(),
        ),
        favorite: (_) => event.maybeMap(
          removeFromFavorites: (_) async* {
            try {
              yield SightFavoriteState.regular(_place);
              await _interactor.removeFromFavorites(_place);
              this.add(SightFavoriteEvent.checkFavorite());
            } catch (_) {
              yield SightFavoriteState.favorite(_place);
            }
          },
          checkFavorite: (_) => _checkFavorite(),
          orElse: () => Stream.empty(),
        ),
      );

  Stream<SightFavoriteState> _checkFavorite() async* {
    if (await _interactor.isFavoritePlace(_place)) {
      yield SightFavoriteState.favorite(_place);
    } else {
      yield SightFavoriteState.regular(_place);
    }
  }
}
