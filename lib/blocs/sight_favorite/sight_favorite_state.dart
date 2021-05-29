import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:places/data/model/place.dart';

part 'sight_favorite_state.freezed.dart';

@freezed
class SightFavoriteState with _$SightFavoriteState {
    const factory SightFavoriteState.regular(Place place) = _Regular;
    const factory SightFavoriteState.favorite(Place place) = _Favorite;
}

