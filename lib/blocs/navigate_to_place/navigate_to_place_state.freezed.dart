// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'navigate_to_place_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NavigateToPlaceStateTearOff {
  const _$NavigateToPlaceStateTearOff();

  _Init init() {
    return const _Init();
  }

  _MapSelection mapSelection(Place place) {
    return _MapSelection(
      place,
    );
  }
}

/// @nodoc
const $NavigateToPlaceState = _$NavigateToPlaceStateTearOff();

/// @nodoc
mixin _$NavigateToPlaceState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Place place) mapSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Place place)? mapSelection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_MapSelection value) mapSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_MapSelection value)? mapSelection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigateToPlaceStateCopyWith<$Res> {
  factory $NavigateToPlaceStateCopyWith(NavigateToPlaceState value,
          $Res Function(NavigateToPlaceState) then) =
      _$NavigateToPlaceStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NavigateToPlaceStateCopyWithImpl<$Res>
    implements $NavigateToPlaceStateCopyWith<$Res> {
  _$NavigateToPlaceStateCopyWithImpl(this._value, this._then);

  final NavigateToPlaceState _value;
  // ignore: unused_field
  final $Res Function(NavigateToPlaceState) _then;
}

/// @nodoc
abstract class _$InitCopyWith<$Res> {
  factory _$InitCopyWith(_Init value, $Res Function(_Init) then) =
      __$InitCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitCopyWithImpl<$Res> extends _$NavigateToPlaceStateCopyWithImpl<$Res>
    implements _$InitCopyWith<$Res> {
  __$InitCopyWithImpl(_Init _value, $Res Function(_Init) _then)
      : super(_value, (v) => _then(v as _Init));

  @override
  _Init get _value => super._value as _Init;
}

/// @nodoc

class _$_Init implements _Init {
  const _$_Init();

  @override
  String toString() {
    return 'NavigateToPlaceState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Init);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Place place) mapSelection,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Place place)? mapSelection,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_MapSelection value) mapSelection,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_MapSelection value)? mapSelection,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements NavigateToPlaceState {
  const factory _Init() = _$_Init;
}

/// @nodoc
abstract class _$MapSelectionCopyWith<$Res> {
  factory _$MapSelectionCopyWith(
          _MapSelection value, $Res Function(_MapSelection) then) =
      __$MapSelectionCopyWithImpl<$Res>;
  $Res call({Place place});
}

/// @nodoc
class __$MapSelectionCopyWithImpl<$Res>
    extends _$NavigateToPlaceStateCopyWithImpl<$Res>
    implements _$MapSelectionCopyWith<$Res> {
  __$MapSelectionCopyWithImpl(
      _MapSelection _value, $Res Function(_MapSelection) _then)
      : super(_value, (v) => _then(v as _MapSelection));

  @override
  _MapSelection get _value => super._value as _MapSelection;

  @override
  $Res call({
    Object? place = freezed,
  }) {
    return _then(_MapSelection(
      place == freezed
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as Place,
    ));
  }
}

/// @nodoc

class _$_MapSelection implements _MapSelection {
  const _$_MapSelection(this.place);

  @override
  final Place place;

  @override
  String toString() {
    return 'NavigateToPlaceState.mapSelection(place: $place)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MapSelection &&
            (identical(other.place, place) ||
                const DeepCollectionEquality().equals(other.place, place)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(place);

  @JsonKey(ignore: true)
  @override
  _$MapSelectionCopyWith<_MapSelection> get copyWith =>
      __$MapSelectionCopyWithImpl<_MapSelection>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Place place) mapSelection,
  }) {
    return mapSelection(place);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Place place)? mapSelection,
    required TResult orElse(),
  }) {
    if (mapSelection != null) {
      return mapSelection(place);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_MapSelection value) mapSelection,
  }) {
    return mapSelection(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_MapSelection value)? mapSelection,
    required TResult orElse(),
  }) {
    if (mapSelection != null) {
      return mapSelection(this);
    }
    return orElse();
  }
}

abstract class _MapSelection implements NavigateToPlaceState {
  const factory _MapSelection(Place place) = _$_MapSelection;

  Place get place => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$MapSelectionCopyWith<_MapSelection> get copyWith =>
      throw _privateConstructorUsedError;
}
