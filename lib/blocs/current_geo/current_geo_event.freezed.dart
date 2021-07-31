// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'current_geo_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CurrentGeoEventTearOff {
  const _$CurrentGeoEventTearOff();

  _Detect detect() {
    return const _Detect();
  }
}

/// @nodoc
const $CurrentGeoEvent = _$CurrentGeoEventTearOff();

/// @nodoc
mixin _$CurrentGeoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() detect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? detect,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Detect value) detect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Detect value)? detect,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentGeoEventCopyWith<$Res> {
  factory $CurrentGeoEventCopyWith(
          CurrentGeoEvent value, $Res Function(CurrentGeoEvent) then) =
      _$CurrentGeoEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CurrentGeoEventCopyWithImpl<$Res>
    implements $CurrentGeoEventCopyWith<$Res> {
  _$CurrentGeoEventCopyWithImpl(this._value, this._then);

  final CurrentGeoEvent _value;
  // ignore: unused_field
  final $Res Function(CurrentGeoEvent) _then;
}

/// @nodoc
abstract class _$DetectCopyWith<$Res> {
  factory _$DetectCopyWith(_Detect value, $Res Function(_Detect) then) =
      __$DetectCopyWithImpl<$Res>;
}

/// @nodoc
class __$DetectCopyWithImpl<$Res> extends _$CurrentGeoEventCopyWithImpl<$Res>
    implements _$DetectCopyWith<$Res> {
  __$DetectCopyWithImpl(_Detect _value, $Res Function(_Detect) _then)
      : super(_value, (v) => _then(v as _Detect));

  @override
  _Detect get _value => super._value as _Detect;
}

/// @nodoc

class _$_Detect implements _Detect {
  const _$_Detect();

  @override
  String toString() {
    return 'CurrentGeoEvent.detect()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Detect);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() detect,
  }) {
    return detect();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? detect,
    required TResult orElse(),
  }) {
    if (detect != null) {
      return detect();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Detect value) detect,
  }) {
    return detect(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Detect value)? detect,
    required TResult orElse(),
  }) {
    if (detect != null) {
      return detect(this);
    }
    return orElse();
  }
}

abstract class _Detect implements CurrentGeoEvent {
  const factory _Detect() = _$_Detect;
}
