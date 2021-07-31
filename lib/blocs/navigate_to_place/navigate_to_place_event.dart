import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:places/data/model/model.dart';

part 'navigate_to_place_event.freezed.dart';

@freezed
class NavigateToPlaceEvent with _$NavigateToPlaceEvent {
    const factory NavigateToPlaceEvent.navigate(Place place) = _Navigate;
}

