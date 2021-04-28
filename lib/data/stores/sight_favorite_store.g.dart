// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sight_favorite_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SightFavoriteStore on SightFavoriteStoreBase, Store {
  final _$isFavoriteAtom = Atom(name: 'SightFavoriteStoreBase.isFavorite');

  @override
  bool get isFavorite {
    _$isFavoriteAtom.reportRead();
    return super.isFavorite;
  }

  @override
  set isFavorite(bool value) {
    _$isFavoriteAtom.reportWrite(value, super.isFavorite, () {
      super.isFavorite = value;
    });
  }

  final _$checkIsFavoriteAsyncAction =
      AsyncAction('SightFavoriteStoreBase.checkIsFavorite');

  @override
  Future<void> checkIsFavorite() {
    return _$checkIsFavoriteAsyncAction.run(() => super.checkIsFavorite());
  }

  final _$addToFavoritesAsyncAction =
      AsyncAction('SightFavoriteStoreBase.addToFavorites');

  @override
  Future<void> addToFavorites(Place place) {
    return _$addToFavoritesAsyncAction.run(() => super.addToFavorites(place));
  }

  final _$removeFromFavoritesAsyncAction =
      AsyncAction('SightFavoriteStoreBase.removeFromFavorites');

  @override
  Future<void> removeFromFavorites(Place place) {
    return _$removeFromFavoritesAsyncAction
        .run(() => super.removeFromFavorites(place));
  }

  @override
  String toString() {
    return '''
isFavorite: ${isFavorite}
    ''';
  }
}
