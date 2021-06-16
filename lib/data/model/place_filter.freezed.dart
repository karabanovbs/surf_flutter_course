// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'place_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlaceFilterTearOff {
  const _$PlaceFilterTearOff();

  _PlaceFilter call({List<SightType>? types, double? distance}) {
    return _PlaceFilter(
      types: types,
      distance: distance,
    );
  }
}

/// @nodoc
const $PlaceFilter = _$PlaceFilterTearOff();

/// @nodoc
mixin _$PlaceFilter {
  List<SightType>? get types => throw _privateConstructorUsedError;
  double? get distance => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlaceFilterCopyWith<PlaceFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceFilterCopyWith<$Res> {
  factory $PlaceFilterCopyWith(
          PlaceFilter value, $Res Function(PlaceFilter) then) =
      _$PlaceFilterCopyWithImpl<$Res>;
  $Res call({List<SightType>? types, double? distance});
}

/// @nodoc
class _$PlaceFilterCopyWithImpl<$Res> implements $PlaceFilterCopyWith<$Res> {
  _$PlaceFilterCopyWithImpl(this._value, this._then);

  final PlaceFilter _value;
  // ignore: unused_field
  final $Res Function(PlaceFilter) _then;

  @override
  $Res call({
    Object? types = freezed,
    Object? distance = freezed,
  }) {
    return _then(_value.copyWith(
      types: types == freezed
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<SightType>?,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$PlaceFilterCopyWith<$Res>
    implements $PlaceFilterCopyWith<$Res> {
  factory _$PlaceFilterCopyWith(
          _PlaceFilter value, $Res Function(_PlaceFilter) then) =
      __$PlaceFilterCopyWithImpl<$Res>;
  @override
  $Res call({List<SightType>? types, double? distance});
}

/// @nodoc
class __$PlaceFilterCopyWithImpl<$Res> extends _$PlaceFilterCopyWithImpl<$Res>
    implements _$PlaceFilterCopyWith<$Res> {
  __$PlaceFilterCopyWithImpl(
      _PlaceFilter _value, $Res Function(_PlaceFilter) _then)
      : super(_value, (v) => _then(v as _PlaceFilter));

  @override
  _PlaceFilter get _value => super._value as _PlaceFilter;

  @override
  $Res call({
    Object? types = freezed,
    Object? distance = freezed,
  }) {
    return _then(_PlaceFilter(
      types: types == freezed
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<SightType>?,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$_PlaceFilter implements _PlaceFilter {
  _$_PlaceFilter({this.types, this.distance});

  @override
  final List<SightType>? types;
  @override
  final double? distance;

  @override
  String toString() {
    return 'PlaceFilter(types: $types, distance: $distance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlaceFilter &&
            (identical(other.types, types) ||
                const DeepCollectionEquality().equals(other.types, types)) &&
            (identical(other.distance, distance) ||
                const DeepCollectionEquality()
                    .equals(other.distance, distance)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(types) ^
      const DeepCollectionEquality().hash(distance);

  @JsonKey(ignore: true)
  @override
  _$PlaceFilterCopyWith<_PlaceFilter> get copyWith =>
      __$PlaceFilterCopyWithImpl<_PlaceFilter>(this, _$identity);
}

abstract class _PlaceFilter implements PlaceFilter {
  factory _PlaceFilter({List<SightType>? types, double? distance}) =
      _$_PlaceFilter;

  @override
  List<SightType>? get types => throw _privateConstructorUsedError;
  @override
  double? get distance => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PlaceFilterCopyWith<_PlaceFilter> get copyWith =>
      throw _privateConstructorUsedError;
}
