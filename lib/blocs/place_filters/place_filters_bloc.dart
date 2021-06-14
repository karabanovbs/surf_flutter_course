import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:places/data/interactor/interactor.dart';
import 'package:places/data/model/model.dart';
import 'package:places/data/repository/repository.dart';
import 'place_filters_event.dart';
import 'place_filters_state.dart';

export 'place_filters_event.dart';
export 'place_filters_state.dart';

class PlaceFiltersBloc extends Bloc<PlaceFiltersEvent, PlaceFiltersState> {
  final ISearchPlaceInteractor _placeInteractor;

  PlaceFiltersBloc(
    this._placeInteractor,
  ) : super(PlaceFiltersState());

  @override
  Stream<PlaceFiltersState> mapEventToState(
    PlaceFiltersEvent event,
  ) =>
      event.map(
        invertType: (_event) async* {
          var filter = state.filter;
          if (filter == null) {
            filter = await load();
          }

          if (filter.types?.contains(_event.type) ?? false) {
            await _placeInteractor.removeTypeFilter(_event.type);
          } else {
            await _placeInteractor.addTypeFilter(_event.type);
          }

          yield state.copyWith(
            filter: await load(),
            count: (await _placeInteractor.searchPlaces()).length,
          );
        },
        load: (_) async* {
          yield state.copyWith(
            filter: await load(),
            count: (await _placeInteractor.searchPlaces()).length,
          );
        },
        clear: (_) async* {
          await _placeInteractor.cleanFilters();
          yield state.copyWith(
            filter: await load(),
            count: (await _placeInteractor.searchPlaces()).length,
          );
        },
        changeDistance: (_event) async* {
          await _placeInteractor.setGeoFilters(_event.distance);
          yield state.copyWith(
            filter: await load(),
            count: (await _placeInteractor.searchPlaces()).length,
          );
        },
      );

  Future<PlaceFilter> load() async {
    return PlaceFilter(
      types: await _placeInteractor.getTypeFilters(),
      distance: await _placeInteractor.getGeoFilters(),
    );
  }
}
