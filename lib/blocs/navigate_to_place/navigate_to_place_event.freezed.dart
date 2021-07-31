// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'navigate_to_place_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NavigateToPlaceEventTearOff {
  const _$NavigateToPlaceEventTearOff();

  _Navigate navigate(Place place) {
    return _Navigate(
      place,
    );
  }
}

/// @nodoc
const $NavigateToPlaceEvent = _$NavigateToPlaceEventTearOff();

/// @nodoc
mixin _$NavigateToPlaceEvent {
  Place get place => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Place place) navigate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Place place)? navigate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Navigate value) navigate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Navigate value)? navigate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NavigateToPlaceEventCopyWith<NavigateToPlaceEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigateToPlaceEventCopyWith<$Res> {
  factory $NavigateToPlaceEventCopyWith(NavigateToPlaceEvent value,
          $Res Function(NavigateToPlaceEvent) then) =
      _$NavigateToPlaceEventCopyWithImpl<$Res>;
  $Res call({Place place});
}

/// @nodoc
class _$NavigateToPlaceEventCopyWithImpl<$Res>
    implements $NavigateToPlaceEventCopyWith<$Res> {
  _$NavigateToPlaceEventCopyWithImpl(this._value, this._then);

  final NavigateToPlaceEvent _value;
  // ignore: unused_field
  final $Res Function(NavigateToPlaceEvent) _then;

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
abstract class _$NavigateCopyWith<$Res>
    implements $NavigateToPlaceEventCopyWith<$Res> {
  factory _$NavigateCopyWith(_Navigate value, $Res Function(_Navigate) then) =
      __$NavigateCopyWithImpl<$Res>;
  @override
  $Res call({Place place});
}

/// @nodoc
class __$NavigateCopyWithImpl<$Res>
    extends _$NavigateToPlaceEventCopyWithImpl<$Res>
    implements _$NavigateCopyWith<$Res> {
  __$NavigateCopyWithImpl(_Navigate _value, $Res Function(_Navigate) _then)
      : super(_value, (v) => _then(v as _Navigate));

  @override
  _Navigate get _value => super._value as _Navigate;

  @override
  $Res call({
    Object? place = freezed,
  }) {
    return _then(_Navigate(
      place == freezed
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as Place,
    ));
  }
}

/// @nodoc

class _$_Navigate implements _Navigate {
  const _$_Navigate(this.place);

  @override
  final Place place;

  @override
  String toString() {
    return 'NavigateToPlaceEvent.navigate(place: $place)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Navigate &&
            (identical(other.place, place) ||
                const DeepCollectionEquality().equals(other.place, place)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(place);

  @JsonKey(ignore: true)
  @override
  _$NavigateCopyWith<_Navigate> get copyWith =>
      __$NavigateCopyWithImpl<_Navigate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Place place) navigate,
  }) {
    return navigate(place);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Place place)? navigate,
    required TResult orElse(),
  }) {
    if (navigate != null) {
      return navigate(place);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Navigate value) navigate,
  }) {
    return navigate(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Navigate value)? navigate,
    required TResult orElse(),
  }) {
    if (navigate != null) {
      return navigate(this);
    }
    return orElse();
  }
}

abstract class _Navigate implements NavigateToPlaceEvent {
  const factory _Navigate(Place place) = _$_Navigate;

  @override
  Place get place => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NavigateCopyWith<_Navigate> get copyWith =>
      throw _privateConstructorUsedError;
}
