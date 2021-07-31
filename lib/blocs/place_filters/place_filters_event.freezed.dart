// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'place_filters_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlaceFiltersEventTearOff {
  const _$PlaceFiltersEventTearOff();

  _Load load() {
    return const _Load();
  }

  _InvertType invertType(SightType type) {
    return _InvertType(
      type,
    );
  }

  _Clear clear() {
    return const _Clear();
  }

  _ChangeDistance changeDistance(double distance) {
    return _ChangeDistance(
      distance,
    );
  }
}

/// @nodoc
const $PlaceFiltersEvent = _$PlaceFiltersEventTearOff();

/// @nodoc
mixin _$PlaceFiltersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(SightType type) invertType,
    required TResult Function() clear,
    required TResult Function(double distance) changeDistance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(SightType type)? invertType,
    TResult Function()? clear,
    TResult Function(double distance)? changeDistance,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_InvertType value) invertType,
    required TResult Function(_Clear value) clear,
    required TResult Function(_ChangeDistance value) changeDistance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_InvertType value)? invertType,
    TResult Function(_Clear value)? clear,
    TResult Function(_ChangeDistance value)? changeDistance,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceFiltersEventCopyWith<$Res> {
  factory $PlaceFiltersEventCopyWith(
          PlaceFiltersEvent value, $Res Function(PlaceFiltersEvent) then) =
      _$PlaceFiltersEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlaceFiltersEventCopyWithImpl<$Res>
    implements $PlaceFiltersEventCopyWith<$Res> {
  _$PlaceFiltersEventCopyWithImpl(this._value, this._then);

  final PlaceFiltersEvent _value;
  // ignore: unused_field
  final $Res Function(PlaceFiltersEvent) _then;
}

/// @nodoc
abstract class _$LoadCopyWith<$Res> {
  factory _$LoadCopyWith(_Load value, $Res Function(_Load) then) =
      __$LoadCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadCopyWithImpl<$Res> extends _$PlaceFiltersEventCopyWithImpl<$Res>
    implements _$LoadCopyWith<$Res> {
  __$LoadCopyWithImpl(_Load _value, $Res Function(_Load) _then)
      : super(_value, (v) => _then(v as _Load));

  @override
  _Load get _value => super._value as _Load;
}

/// @nodoc

class _$_Load implements _Load {
  const _$_Load();

  @override
  String toString() {
    return 'PlaceFiltersEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Load);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(SightType type) invertType,
    required TResult Function() clear,
    required TResult Function(double distance) changeDistance,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(SightType type)? invertType,
    TResult Function()? clear,
    TResult Function(double distance)? changeDistance,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_InvertType value) invertType,
    required TResult Function(_Clear value) clear,
    required TResult Function(_ChangeDistance value) changeDistance,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_InvertType value)? invertType,
    TResult Function(_Clear value)? clear,
    TResult Function(_ChangeDistance value)? changeDistance,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _Load implements PlaceFiltersEvent {
  const factory _Load() = _$_Load;
}

/// @nodoc
abstract class _$InvertTypeCopyWith<$Res> {
  factory _$InvertTypeCopyWith(
          _InvertType value, $Res Function(_InvertType) then) =
      __$InvertTypeCopyWithImpl<$Res>;
  $Res call({SightType type});
}

/// @nodoc
class __$InvertTypeCopyWithImpl<$Res>
    extends _$PlaceFiltersEventCopyWithImpl<$Res>
    implements _$InvertTypeCopyWith<$Res> {
  __$InvertTypeCopyWithImpl(
      _InvertType _value, $Res Function(_InvertType) _then)
      : super(_value, (v) => _then(v as _InvertType));

  @override
  _InvertType get _value => super._value as _InvertType;

  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_InvertType(
      type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SightType,
    ));
  }
}

/// @nodoc

class _$_InvertType implements _InvertType {
  const _$_InvertType(this.type);

  @override
  final SightType type;

  @override
  String toString() {
    return 'PlaceFiltersEvent.invertType(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvertType &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(type);

  @JsonKey(ignore: true)
  @override
  _$InvertTypeCopyWith<_InvertType> get copyWith =>
      __$InvertTypeCopyWithImpl<_InvertType>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(SightType type) invertType,
    required TResult Function() clear,
    required TResult Function(double distance) changeDistance,
  }) {
    return invertType(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(SightType type)? invertType,
    TResult Function()? clear,
    TResult Function(double distance)? changeDistance,
    required TResult orElse(),
  }) {
    if (invertType != null) {
      return invertType(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_InvertType value) invertType,
    required TResult Function(_Clear value) clear,
    required TResult Function(_ChangeDistance value) changeDistance,
  }) {
    return invertType(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_InvertType value)? invertType,
    TResult Function(_Clear value)? clear,
    TResult Function(_ChangeDistance value)? changeDistance,
    required TResult orElse(),
  }) {
    if (invertType != null) {
      return invertType(this);
    }
    return orElse();
  }
}

abstract class _InvertType implements PlaceFiltersEvent {
  const factory _InvertType(SightType type) = _$_InvertType;

  SightType get type => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InvertTypeCopyWith<_InvertType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ClearCopyWith<$Res> {
  factory _$ClearCopyWith(_Clear value, $Res Function(_Clear) then) =
      __$ClearCopyWithImpl<$Res>;
}

/// @nodoc
class __$ClearCopyWithImpl<$Res> extends _$PlaceFiltersEventCopyWithImpl<$Res>
    implements _$ClearCopyWith<$Res> {
  __$ClearCopyWithImpl(_Clear _value, $Res Function(_Clear) _then)
      : super(_value, (v) => _then(v as _Clear));

  @override
  _Clear get _value => super._value as _Clear;
}

/// @nodoc

class _$_Clear implements _Clear {
  const _$_Clear();

  @override
  String toString() {
    return 'PlaceFiltersEvent.clear()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Clear);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(SightType type) invertType,
    required TResult Function() clear,
    required TResult Function(double distance) changeDistance,
  }) {
    return clear();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(SightType type)? invertType,
    TResult Function()? clear,
    TResult Function(double distance)? changeDistance,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_InvertType value) invertType,
    required TResult Function(_Clear value) clear,
    required TResult Function(_ChangeDistance value) changeDistance,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_InvertType value)? invertType,
    TResult Function(_Clear value)? clear,
    TResult Function(_ChangeDistance value)? changeDistance,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class _Clear implements PlaceFiltersEvent {
  const factory _Clear() = _$_Clear;
}

/// @nodoc
abstract class _$ChangeDistanceCopyWith<$Res> {
  factory _$ChangeDistanceCopyWith(
          _ChangeDistance value, $Res Function(_ChangeDistance) then) =
      __$ChangeDistanceCopyWithImpl<$Res>;
  $Res call({double distance});
}

/// @nodoc
class __$ChangeDistanceCopyWithImpl<$Res>
    extends _$PlaceFiltersEventCopyWithImpl<$Res>
    implements _$ChangeDistanceCopyWith<$Res> {
  __$ChangeDistanceCopyWithImpl(
      _ChangeDistance _value, $Res Function(_ChangeDistance) _then)
      : super(_value, (v) => _then(v as _ChangeDistance));

  @override
  _ChangeDistance get _value => super._value as _ChangeDistance;

  @override
  $Res call({
    Object? distance = freezed,
  }) {
    return _then(_ChangeDistance(
      distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_ChangeDistance implements _ChangeDistance {
  const _$_ChangeDistance(this.distance);

  @override
  final double distance;

  @override
  String toString() {
    return 'PlaceFiltersEvent.changeDistance(distance: $distance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeDistance &&
            (identical(other.distance, distance) ||
                const DeepCollectionEquality()
                    .equals(other.distance, distance)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(distance);

  @JsonKey(ignore: true)
  @override
  _$ChangeDistanceCopyWith<_ChangeDistance> get copyWith =>
      __$ChangeDistanceCopyWithImpl<_ChangeDistance>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(SightType type) invertType,
    required TResult Function() clear,
    required TResult Function(double distance) changeDistance,
  }) {
    return changeDistance(distance);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(SightType type)? invertType,
    TResult Function()? clear,
    TResult Function(double distance)? changeDistance,
    required TResult orElse(),
  }) {
    if (changeDistance != null) {
      return changeDistance(distance);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_InvertType value) invertType,
    required TResult Function(_Clear value) clear,
    required TResult Function(_ChangeDistance value) changeDistance,
  }) {
    return changeDistance(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_InvertType value)? invertType,
    TResult Function(_Clear value)? clear,
    TResult Function(_ChangeDistance value)? changeDistance,
    required TResult orElse(),
  }) {
    if (changeDistance != null) {
      return changeDistance(this);
    }
    return orElse();
  }
}

abstract class _ChangeDistance implements PlaceFiltersEvent {
  const factory _ChangeDistance(double distance) = _$_ChangeDistance;

  double get distance => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeDistanceCopyWith<_ChangeDistance> get copyWith =>
      throw _privateConstructorUsedError;
}
