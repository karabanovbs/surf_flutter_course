import 'package:freezed_annotation/freezed_annotation.dart';

part 'sight_favorite_event.freezed.dart';

@freezed
class SightFavoriteEvent with _$SightFavoriteEvent {
    const factory SightFavoriteEvent.checkFavorite() = _CheckFavorite;
    const factory SightFavoriteEvent.addToFavorites() = _AddToFavorites;
    const factory SightFavoriteEvent.removeFromFavorites() = _RemoveFromFavorites;
}

