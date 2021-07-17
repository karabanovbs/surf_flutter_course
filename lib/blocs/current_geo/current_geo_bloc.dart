import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:places/data/service/geo_location_service.dart';
import 'package:places/helpers/distance_helper.dart';
import 'current_geo_event.dart';
import 'current_geo_state.dart';

export 'current_geo_event.dart';
export 'current_geo_state.dart';

class CurrentGeoBloc extends Bloc<CurrentGeoEvent, CurrentGeoState> {
  final GeoLocationService _geoLocationService;

  CurrentGeoBloc(
    this._geoLocationService,
  ) : super(CurrentGeoState.init());

  @override
  Stream<CurrentGeoState> mapEventToState(
    CurrentGeoEvent event,
  ) =>
      state.map(
        init: (value) => event.maybeMap(
          detect: (value) async* {
            try {
              var location = await _geoLocationService.getCurrentLocation();
              yield CurrentGeoState.location(
                currentGeo: GeoPoint(
                  latitude: location.latitude,
                  longitude: location.longitude,
                ),
              );
            } catch (_) {
              yield CurrentGeoState.failed();
            }
          },
          orElse: () => Stream.empty(),
        ),
        location: (value) => event.maybeMap(
          orElse: () => Stream.empty(),
        ),
        failed: (value) => event.maybeMap(
          orElse: () => Stream.empty(),
        ),
      );
}
