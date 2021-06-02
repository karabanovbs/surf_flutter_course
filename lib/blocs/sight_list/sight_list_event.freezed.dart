// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'sight_list_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SightListEventTearOff {
  const _$SightListEventTearOff();

  _LoadPlaces loadPlaces() {
    return const _LoadPlaces();
  }
}

/// @nodoc
const $SightListEvent = _$SightListEventTearOff();

/// @nodoc
mixin _$SightListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadPlaces,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadPlaces,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadPlaces value) loadPlaces,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadPlaces value)? loadPlaces,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SightListEventCopyWith<$Res> {
  factory $SightListEventCopyWith(
          SightListEvent value, $Res Function(SightListEvent) then) =
      _$SightListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SightListEventCopyWithImpl<$Res>
    implements $SightListEventCopyWith<$Res> {
  _$SightListEventCopyWithImpl(this._value, this._then);

  final SightListEvent _value;
  // ignore: unused_field
  final $Res Function(SightListEvent) _then;
}

/// @nodoc
abstract class _$LoadPlacesCopyWith<$Res> {
  factory _$LoadPlacesCopyWith(
          _LoadPlaces value, $Res Function(_LoadPlaces) then) =
      __$LoadPlacesCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadPlacesCopyWithImpl<$Res> extends _$SightListEventCopyWithImpl<$Res>
    implements _$LoadPlacesCopyWith<$Res> {
  __$LoadPlacesCopyWithImpl(
      _LoadPlaces _value, $Res Function(_LoadPlaces) _then)
      : super(_value, (v) => _then(v as _LoadPlaces));

  @override
  _LoadPlaces get _value => super._value as _LoadPlaces;
}

/// @nodoc

class _$_LoadPlaces implements _LoadPlaces {
  const _$_LoadPlaces();

  @override
  String toString() {
    return 'SightListEvent.loadPlaces()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadPlaces);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadPlaces,
  }) {
    return loadPlaces();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadPlaces,
    required TResult orElse(),
  }) {
    if (loadPlaces != null) {
      return loadPlaces();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadPlaces value) loadPlaces,
  }) {
    return loadPlaces(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadPlaces value)? loadPlaces,
    required TResult orElse(),
  }) {
    if (loadPlaces != null) {
      return loadPlaces(this);
    }
    return orElse();
  }
}

abstract class _LoadPlaces implements SightListEvent {
  const factory _LoadPlaces() = _$_LoadPlaces;
}
