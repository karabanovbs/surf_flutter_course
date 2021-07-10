// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'add_sight_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddSightFormStateTearOff {
  const _$AddSightFormStateTearOff();

  _AddSightFormState call(
      {ESightType? selectedType,
      String? name,
      String? description,
      double? lat,
      double? long,
      List<Uint8List> photos = const []}) {
    return _AddSightFormState(
      selectedType: selectedType,
      name: name,
      description: description,
      lat: lat,
      long: long,
      photos: photos,
    );
  }
}

/// @nodoc
const $AddSightFormState = _$AddSightFormStateTearOff();

/// @nodoc
mixin _$AddSightFormState {
  ESightType? get selectedType => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  double? get lat => throw _privateConstructorUsedError;
  double? get long => throw _privateConstructorUsedError;
  List<Uint8List> get photos => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddSightFormStateCopyWith<AddSightFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddSightFormStateCopyWith<$Res> {
  factory $AddSightFormStateCopyWith(
          AddSightFormState value, $Res Function(AddSightFormState) then) =
      _$AddSightFormStateCopyWithImpl<$Res>;
  $Res call(
      {ESightType? selectedType,
      String? name,
      String? description,
      double? lat,
      double? long,
      List<Uint8List> photos});
}

/// @nodoc
class _$AddSightFormStateCopyWithImpl<$Res>
    implements $AddSightFormStateCopyWith<$Res> {
  _$AddSightFormStateCopyWithImpl(this._value, this._then);

  final AddSightFormState _value;
  // ignore: unused_field
  final $Res Function(AddSightFormState) _then;

  @override
  $Res call({
    Object? selectedType = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? lat = freezed,
    Object? long = freezed,
    Object? photos = freezed,
  }) {
    return _then(_value.copyWith(
      selectedType: selectedType == freezed
          ? _value.selectedType
          : selectedType // ignore: cast_nullable_to_non_nullable
              as ESightType?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      long: long == freezed
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as double?,
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Uint8List>,
    ));
  }
}

/// @nodoc
abstract class _$AddSightFormStateCopyWith<$Res>
    implements $AddSightFormStateCopyWith<$Res> {
  factory _$AddSightFormStateCopyWith(
          _AddSightFormState value, $Res Function(_AddSightFormState) then) =
      __$AddSightFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {ESightType? selectedType,
      String? name,
      String? description,
      double? lat,
      double? long,
      List<Uint8List> photos});
}

/// @nodoc
class __$AddSightFormStateCopyWithImpl<$Res>
    extends _$AddSightFormStateCopyWithImpl<$Res>
    implements _$AddSightFormStateCopyWith<$Res> {
  __$AddSightFormStateCopyWithImpl(
      _AddSightFormState _value, $Res Function(_AddSightFormState) _then)
      : super(_value, (v) => _then(v as _AddSightFormState));

  @override
  _AddSightFormState get _value => super._value as _AddSightFormState;

  @override
  $Res call({
    Object? selectedType = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? lat = freezed,
    Object? long = freezed,
    Object? photos = freezed,
  }) {
    return _then(_AddSightFormState(
      selectedType: selectedType == freezed
          ? _value.selectedType
          : selectedType // ignore: cast_nullable_to_non_nullable
              as ESightType?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      long: long == freezed
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as double?,
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Uint8List>,
    ));
  }
}

/// @nodoc

class _$_AddSightFormState extends _AddSightFormState {
  _$_AddSightFormState(
      {this.selectedType,
      this.name,
      this.description,
      this.lat,
      this.long,
      this.photos = const []})
      : super._();

  @override
  final ESightType? selectedType;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final double? lat;
  @override
  final double? long;
  @JsonKey(defaultValue: const [])
  @override
  final List<Uint8List> photos;

  @override
  String toString() {
    return 'AddSightFormState(selectedType: $selectedType, name: $name, description: $description, lat: $lat, long: $long, photos: $photos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddSightFormState &&
            (identical(other.selectedType, selectedType) ||
                const DeepCollectionEquality()
                    .equals(other.selectedType, selectedType)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.long, long) ||
                const DeepCollectionEquality().equals(other.long, long)) &&
            (identical(other.photos, photos) ||
                const DeepCollectionEquality().equals(other.photos, photos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(selectedType) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(long) ^
      const DeepCollectionEquality().hash(photos);

  @JsonKey(ignore: true)
  @override
  _$AddSightFormStateCopyWith<_AddSightFormState> get copyWith =>
      __$AddSightFormStateCopyWithImpl<_AddSightFormState>(this, _$identity);
}

abstract class _AddSightFormState extends AddSightFormState {
  factory _AddSightFormState(
      {ESightType? selectedType,
      String? name,
      String? description,
      double? lat,
      double? long,
      List<Uint8List> photos}) = _$_AddSightFormState;
  _AddSightFormState._() : super._();

  @override
  ESightType? get selectedType => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  double? get lat => throw _privateConstructorUsedError;
  @override
  double? get long => throw _privateConstructorUsedError;
  @override
  List<Uint8List> get photos => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AddSightFormStateCopyWith<_AddSightFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
