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

  _load load() {
    return const _load();
  }

  _invertType invertType(SightType type) {
    return _invertType(
      type,
    );
  }

  _clear clear() {
    return const _clear();
  }

  _changeDistance changeDistance(double distance) {
    return _changeDistance(
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
    required TResult Function(_load value) load,
    required TResult Function(_invertType value) invertType,
    required TResult Function(_clear value) clear,
    required TResult Function(_changeDistance value) changeDistance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_load value)? load,
    TResult Function(_invertType value)? invertType,
    TResult Function(_clear value)? clear,
    TResult Function(_changeDistance value)? changeDistance,
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
abstract class _$loadCopyWith<$Res> {
  factory _$loadCopyWith(_load value, $Res Function(_load) then) =
      __$loadCopyWithImpl<$Res>;
}

/// @nodoc
class __$loadCopyWithImpl<$Res> extends _$PlaceFiltersEventCopyWithImpl<$Res>
    implements _$loadCopyWith<$Res> {
  __$loadCopyWithImpl(_load _value, $Res Function(_load) _then)
      : super(_value, (v) => _then(v as _load));

  @override
  _load get _value => super._value as _load;
}

/// @nodoc

class _$_load implements _load {
  const _$_load();

  @override
  String toString() {
    return 'PlaceFiltersEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _load);
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
    required TResult Function(_load value) load,
    required TResult Function(_invertType value) invertType,
    required TResult Function(_clear value) clear,
    required TResult Function(_changeDistance value) changeDistance,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_load value)? load,
    TResult Function(_invertType value)? invertType,
    TResult Function(_clear value)? clear,
    TResult Function(_changeDistance value)? changeDistance,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _load implements PlaceFiltersEvent {
  const factory _load() = _$_load;
}

/// @nodoc
abstract class _$invertTypeCopyWith<$Res> {
  factory _$invertTypeCopyWith(
          _invertType value, $Res Function(_invertType) then) =
      __$invertTypeCopyWithImpl<$Res>;
  $Res call({SightType type});
}

/// @nodoc
class __$invertTypeCopyWithImpl<$Res>
    extends _$PlaceFiltersEventCopyWithImpl<$Res>
    implements _$invertTypeCopyWith<$Res> {
  __$invertTypeCopyWithImpl(
      _invertType _value, $Res Function(_invertType) _then)
      : super(_value, (v) => _then(v as _invertType));

  @override
  _invertType get _value => super._value as _invertType;

  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_invertType(
      type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SightType,
    ));
  }
}

/// @nodoc

class _$_invertType implements _invertType {
  const _$_invertType(this.type);

  @override
  final SightType type;

  @override
  String toString() {
    return 'PlaceFiltersEvent.invertType(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _invertType &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(type);

  @JsonKey(ignore: true)
  @override
  _$invertTypeCopyWith<_invertType> get copyWith =>
      __$invertTypeCopyWithImpl<_invertType>(this, _$identity);

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
    required TResult Function(_load value) load,
    required TResult Function(_invertType value) invertType,
    required TResult Function(_clear value) clear,
    required TResult Function(_changeDistance value) changeDistance,
  }) {
    return invertType(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_load value)? load,
    TResult Function(_invertType value)? invertType,
    TResult Function(_clear value)? clear,
    TResult Function(_changeDistance value)? changeDistance,
    required TResult orElse(),
  }) {
    if (invertType != null) {
      return invertType(this);
    }
    return orElse();
  }
}

abstract class _invertType implements PlaceFiltersEvent {
  const factory _invertType(SightType type) = _$_invertType;

  SightType get type => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$invertTypeCopyWith<_invertType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$clearCopyWith<$Res> {
  factory _$clearCopyWith(_clear value, $Res Function(_clear) then) =
      __$clearCopyWithImpl<$Res>;
}

/// @nodoc
class __$clearCopyWithImpl<$Res> extends _$PlaceFiltersEventCopyWithImpl<$Res>
    implements _$clearCopyWith<$Res> {
  __$clearCopyWithImpl(_clear _value, $Res Function(_clear) _then)
      : super(_value, (v) => _then(v as _clear));

  @override
  _clear get _value => super._value as _clear;
}

/// @nodoc

class _$_clear implements _clear {
  const _$_clear();

  @override
  String toString() {
    return 'PlaceFiltersEvent.clear()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _clear);
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
    required TResult Function(_load value) load,
    required TResult Function(_invertType value) invertType,
    required TResult Function(_clear value) clear,
    required TResult Function(_changeDistance value) changeDistance,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_load value)? load,
    TResult Function(_invertType value)? invertType,
    TResult Function(_clear value)? clear,
    TResult Function(_changeDistance value)? changeDistance,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class _clear implements PlaceFiltersEvent {
  const factory _clear() = _$_clear;
}

/// @nodoc
abstract class _$changeDistanceCopyWith<$Res> {
  factory _$changeDistanceCopyWith(
          _changeDistance value, $Res Function(_changeDistance) then) =
      __$changeDistanceCopyWithImpl<$Res>;
  $Res call({double distance});
}

/// @nodoc
class __$changeDistanceCopyWithImpl<$Res>
    extends _$PlaceFiltersEventCopyWithImpl<$Res>
    implements _$changeDistanceCopyWith<$Res> {
  __$changeDistanceCopyWithImpl(
      _changeDistance _value, $Res Function(_changeDistance) _then)
      : super(_value, (v) => _then(v as _changeDistance));

  @override
  _changeDistance get _value => super._value as _changeDistance;

  @override
  $Res call({
    Object? distance = freezed,
  }) {
    return _then(_changeDistance(
      distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_changeDistance implements _changeDistance {
  const _$_changeDistance(this.distance);

  @override
  final double distance;

  @override
  String toString() {
    return 'PlaceFiltersEvent.changeDistance(distance: $distance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _changeDistance &&
            (identical(other.distance, distance) ||
                const DeepCollectionEquality()
                    .equals(other.distance, distance)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(distance);

  @JsonKey(ignore: true)
  @override
  _$changeDistanceCopyWith<_changeDistance> get copyWith =>
      __$changeDistanceCopyWithImpl<_changeDistance>(this, _$identity);

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
    required TResult Function(_load value) load,
    required TResult Function(_invertType value) invertType,
    required TResult Function(_clear value) clear,
    required TResult Function(_changeDistance value) changeDistance,
  }) {
    return changeDistance(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_load value)? load,
    TResult Function(_invertType value)? invertType,
    TResult Function(_clear value)? clear,
    TResult Function(_changeDistance value)? changeDistance,
    required TResult orElse(),
  }) {
    if (changeDistance != null) {
      return changeDistance(this);
    }
    return orElse();
  }
}

abstract class _changeDistance implements PlaceFiltersEvent {
  const factory _changeDistance(double distance) = _$_changeDistance;

  double get distance => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$changeDistanceCopyWith<_changeDistance> get copyWith =>
      throw _privateConstructorUsedError;
}
