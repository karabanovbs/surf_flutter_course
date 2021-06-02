// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'sight_favorite_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SightFavoriteStateTearOff {
  const _$SightFavoriteStateTearOff();

  _Regular regular(Place place) {
    return _Regular(
      place,
    );
  }

  _Favorite favorite(Place place) {
    return _Favorite(
      place,
    );
  }
}

/// @nodoc
const $SightFavoriteState = _$SightFavoriteStateTearOff();

/// @nodoc
mixin _$SightFavoriteState {
  Place get place => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Place place) regular,
    required TResult Function(Place place) favorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Place place)? regular,
    TResult Function(Place place)? favorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Regular value) regular,
    required TResult Function(_Favorite value) favorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Regular value)? regular,
    TResult Function(_Favorite value)? favorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SightFavoriteStateCopyWith<SightFavoriteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SightFavoriteStateCopyWith<$Res> {
  factory $SightFavoriteStateCopyWith(
          SightFavoriteState value, $Res Function(SightFavoriteState) then) =
      _$SightFavoriteStateCopyWithImpl<$Res>;
  $Res call({Place place});
}

/// @nodoc
class _$SightFavoriteStateCopyWithImpl<$Res>
    implements $SightFavoriteStateCopyWith<$Res> {
  _$SightFavoriteStateCopyWithImpl(this._value, this._then);

  final SightFavoriteState _value;
  // ignore: unused_field
  final $Res Function(SightFavoriteState) _then;

  @override
  $Res call({
    Object? place = freezed,
  }) {
    return _then(_value.copyWith(
      place: place == freezed
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as Place,
    ));
  }
}

/// @nodoc
abstract class _$RegularCopyWith<$Res>
    implements $SightFavoriteStateCopyWith<$Res> {
  factory _$RegularCopyWith(_Regular value, $Res Function(_Regular) then) =
      __$RegularCopyWithImpl<$Res>;
  @override
  $Res call({Place place});
}

/// @nodoc
class __$RegularCopyWithImpl<$Res>
    extends _$SightFavoriteStateCopyWithImpl<$Res>
    implements _$RegularCopyWith<$Res> {
  __$RegularCopyWithImpl(_Regular _value, $Res Function(_Regular) _then)
      : super(_value, (v) => _then(v as _Regular));

  @override
  _Regular get _value => super._value as _Regular;

  @override
  $Res call({
    Object? place = freezed,
  }) {
    return _then(_Regular(
      place == freezed
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as Place,
    ));
  }
}

/// @nodoc

class _$_Regular implements _Regular {
  const _$_Regular(this.place);

  @override
  final Place place;

  @override
  String toString() {
    return 'SightFavoriteState.regular(place: $place)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Regular &&
            (identical(other.place, place) ||
                const DeepCollectionEquality().equals(other.place, place)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(place);

  @JsonKey(ignore: true)
  @override
  _$RegularCopyWith<_Regular> get copyWith =>
      __$RegularCopyWithImpl<_Regular>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Place place) regular,
    required TResult Function(Place place) favorite,
  }) {
    return regular(place);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Place place)? regular,
    TResult Function(Place place)? favorite,
    required TResult orElse(),
  }) {
    if (regular != null) {
      return regular(place);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Regular value) regular,
    required TResult Function(_Favorite value) favorite,
  }) {
    return regular(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Regular value)? regular,
    TResult Function(_Favorite value)? favorite,
    required TResult orElse(),
  }) {
    if (regular != null) {
      return regular(this);
    }
    return orElse();
  }
}

abstract class _Regular implements SightFavoriteState {
  const factory _Regular(Place place) = _$_Regular;

  @override
  Place get place => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RegularCopyWith<_Regular> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FavoriteCopyWith<$Res>
    implements $SightFavoriteStateCopyWith<$Res> {
  factory _$FavoriteCopyWith(_Favorite value, $Res Function(_Favorite) then) =
      __$FavoriteCopyWithImpl<$Res>;
  @override
  $Res call({Place place});
}

/// @nodoc
class __$FavoriteCopyWithImpl<$Res>
    extends _$SightFavoriteStateCopyWithImpl<$Res>
    implements _$FavoriteCopyWith<$Res> {
  __$FavoriteCopyWithImpl(_Favorite _value, $Res Function(_Favorite) _then)
      : super(_value, (v) => _then(v as _Favorite));

  @override
  _Favorite get _value => super._value as _Favorite;

  @override
  $Res call({
    Object? place = freezed,
  }) {
    return _then(_Favorite(
      place == freezed
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as Place,
    ));
  }
}

/// @nodoc

class _$_Favorite implements _Favorite {
  const _$_Favorite(this.place);

  @override
  final Place place;

  @override
  String toString() {
    return 'SightFavoriteState.favorite(place: $place)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Favorite &&
            (identical(other.place, place) ||
                const DeepCollectionEquality().equals(other.place, place)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(place);

  @JsonKey(ignore: true)
  @override
  _$FavoriteCopyWith<_Favorite> get copyWith =>
      __$FavoriteCopyWithImpl<_Favorite>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Place place) regular,
    required TResult Function(Place place) favorite,
  }) {
    return favorite(place);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Place place)? regular,
    TResult Function(Place place)? favorite,
    required TResult orElse(),
  }) {
    if (favorite != null) {
      return favorite(place);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Regular value) regular,
    required TResult Function(_Favorite value) favorite,
  }) {
    return favorite(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Regular value)? regular,
    TResult Function(_Favorite value)? favorite,
    required TResult orElse(),
  }) {
    if (favorite != null) {
      return favorite(this);
    }
    return orElse();
  }
}

abstract class _Favorite implements SightFavoriteState {
  const factory _Favorite(Place place) = _$_Favorite;

  @override
  Place get place => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FavoriteCopyWith<_Favorite> get copyWith =>
      throw _privateConstructorUsedError;
}
