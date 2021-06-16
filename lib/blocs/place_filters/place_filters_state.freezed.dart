// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'place_filters_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlaceFiltersStateTearOff {
  const _$PlaceFiltersStateTearOff();

  _PlaceFiltersState call({PlaceFilter? filter, int? count}) {
    return _PlaceFiltersState(
      filter: filter,
      count: count,
    );
  }
}

/// @nodoc
const $PlaceFiltersState = _$PlaceFiltersStateTearOff();

/// @nodoc
mixin _$PlaceFiltersState {
  PlaceFilter? get filter => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlaceFiltersStateCopyWith<PlaceFiltersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceFiltersStateCopyWith<$Res> {
  factory $PlaceFiltersStateCopyWith(
          PlaceFiltersState value, $Res Function(PlaceFiltersState) then) =
      _$PlaceFiltersStateCopyWithImpl<$Res>;
  $Res call({PlaceFilter? filter, int? count});

  $PlaceFilterCopyWith<$Res>? get filter;
}

/// @nodoc
class _$PlaceFiltersStateCopyWithImpl<$Res>
    implements $PlaceFiltersStateCopyWith<$Res> {
  _$PlaceFiltersStateCopyWithImpl(this._value, this._then);

  final PlaceFiltersState _value;
  // ignore: unused_field
  final $Res Function(PlaceFiltersState) _then;

  @override
  $Res call({
    Object? filter = freezed,
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as PlaceFilter?,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $PlaceFilterCopyWith<$Res>? get filter {
    if (_value.filter == null) {
      return null;
    }

    return $PlaceFilterCopyWith<$Res>(_value.filter!, (value) {
      return _then(_value.copyWith(filter: value));
    });
  }
}

/// @nodoc
abstract class _$PlaceFiltersStateCopyWith<$Res>
    implements $PlaceFiltersStateCopyWith<$Res> {
  factory _$PlaceFiltersStateCopyWith(
          _PlaceFiltersState value, $Res Function(_PlaceFiltersState) then) =
      __$PlaceFiltersStateCopyWithImpl<$Res>;
  @override
  $Res call({PlaceFilter? filter, int? count});

  @override
  $PlaceFilterCopyWith<$Res>? get filter;
}

/// @nodoc
class __$PlaceFiltersStateCopyWithImpl<$Res>
    extends _$PlaceFiltersStateCopyWithImpl<$Res>
    implements _$PlaceFiltersStateCopyWith<$Res> {
  __$PlaceFiltersStateCopyWithImpl(
      _PlaceFiltersState _value, $Res Function(_PlaceFiltersState) _then)
      : super(_value, (v) => _then(v as _PlaceFiltersState));

  @override
  _PlaceFiltersState get _value => super._value as _PlaceFiltersState;

  @override
  $Res call({
    Object? filter = freezed,
    Object? count = freezed,
  }) {
    return _then(_PlaceFiltersState(
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as PlaceFilter?,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_PlaceFiltersState implements _PlaceFiltersState {
  const _$_PlaceFiltersState({this.filter, this.count});

  @override
  final PlaceFilter? filter;
  @override
  final int? count;

  @override
  String toString() {
    return 'PlaceFiltersState(filter: $filter, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlaceFiltersState &&
            (identical(other.filter, filter) ||
                const DeepCollectionEquality().equals(other.filter, filter)) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(filter) ^
      const DeepCollectionEquality().hash(count);

  @JsonKey(ignore: true)
  @override
  _$PlaceFiltersStateCopyWith<_PlaceFiltersState> get copyWith =>
      __$PlaceFiltersStateCopyWithImpl<_PlaceFiltersState>(this, _$identity);
}

abstract class _PlaceFiltersState implements PlaceFiltersState {
  const factory _PlaceFiltersState({PlaceFilter? filter, int? count}) =
      _$_PlaceFiltersState;

  @override
  PlaceFilter? get filter => throw _privateConstructorUsedError;
  @override
  int? get count => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PlaceFiltersStateCopyWith<_PlaceFiltersState> get copyWith =>
      throw _privateConstructorUsedError;
}
