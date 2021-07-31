// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'add_sight_form_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddSightFormEventTearOff {
  const _$AddSightFormEventTearOff();

  _LoadPhoto loadPhoto(SelectPhotoType photo) {
    return _LoadPhoto(
      photo,
    );
  }

  _ChangeSelectedType changeSelectedType(ESightType? selectedType) {
    return _ChangeSelectedType(
      selectedType,
    );
  }

  _ChangeName changeName(String? name) {
    return _ChangeName(
      name,
    );
  }

  _ChangeDescription changeDescription(String? description) {
    return _ChangeDescription(
      description,
    );
  }

  _ChangeLat changeLat(double? lat) {
    return _ChangeLat(
      lat,
    );
  }

  _ChangeLong changeLong(double? long) {
    return _ChangeLong(
      long,
    );
  }

  _RemovePhoto removePhoto(Uint8List? value) {
    return _RemovePhoto(
      value,
    );
  }

  _Save save() {
    return const _Save();
  }
}

/// @nodoc
const $AddSightFormEvent = _$AddSightFormEventTearOff();

/// @nodoc
mixin _$AddSightFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SelectPhotoType photo) loadPhoto,
    required TResult Function(ESightType? selectedType) changeSelectedType,
    required TResult Function(String? name) changeName,
    required TResult Function(String? description) changeDescription,
    required TResult Function(double? lat) changeLat,
    required TResult Function(double? long) changeLong,
    required TResult Function(Uint8List? value) removePhoto,
    required TResult Function() save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SelectPhotoType photo)? loadPhoto,
    TResult Function(ESightType? selectedType)? changeSelectedType,
    TResult Function(String? name)? changeName,
    TResult Function(String? description)? changeDescription,
    TResult Function(double? lat)? changeLat,
    TResult Function(double? long)? changeLong,
    TResult Function(Uint8List? value)? removePhoto,
    TResult Function()? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadPhoto value) loadPhoto,
    required TResult Function(_ChangeSelectedType value) changeSelectedType,
    required TResult Function(_ChangeName value) changeName,
    required TResult Function(_ChangeDescription value) changeDescription,
    required TResult Function(_ChangeLat value) changeLat,
    required TResult Function(_ChangeLong value) changeLong,
    required TResult Function(_RemovePhoto value) removePhoto,
    required TResult Function(_Save value) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadPhoto value)? loadPhoto,
    TResult Function(_ChangeSelectedType value)? changeSelectedType,
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ChangeDescription value)? changeDescription,
    TResult Function(_ChangeLat value)? changeLat,
    TResult Function(_ChangeLong value)? changeLong,
    TResult Function(_RemovePhoto value)? removePhoto,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddSightFormEventCopyWith<$Res> {
  factory $AddSightFormEventCopyWith(
          AddSightFormEvent value, $Res Function(AddSightFormEvent) then) =
      _$AddSightFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddSightFormEventCopyWithImpl<$Res>
    implements $AddSightFormEventCopyWith<$Res> {
  _$AddSightFormEventCopyWithImpl(this._value, this._then);

  final AddSightFormEvent _value;
  // ignore: unused_field
  final $Res Function(AddSightFormEvent) _then;
}

/// @nodoc
abstract class _$LoadPhotoCopyWith<$Res> {
  factory _$LoadPhotoCopyWith(
          _LoadPhoto value, $Res Function(_LoadPhoto) then) =
      __$LoadPhotoCopyWithImpl<$Res>;
  $Res call({SelectPhotoType photo});
}

/// @nodoc
class __$LoadPhotoCopyWithImpl<$Res>
    extends _$AddSightFormEventCopyWithImpl<$Res>
    implements _$LoadPhotoCopyWith<$Res> {
  __$LoadPhotoCopyWithImpl(_LoadPhoto _value, $Res Function(_LoadPhoto) _then)
      : super(_value, (v) => _then(v as _LoadPhoto));

  @override
  _LoadPhoto get _value => super._value as _LoadPhoto;

  @override
  $Res call({
    Object? photo = freezed,
  }) {
    return _then(_LoadPhoto(
      photo == freezed
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as SelectPhotoType,
    ));
  }
}

/// @nodoc

class _$_LoadPhoto implements _LoadPhoto {
  const _$_LoadPhoto(this.photo);

  @override
  final SelectPhotoType photo;

  @override
  String toString() {
    return 'AddSightFormEvent.loadPhoto(photo: $photo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadPhoto &&
            (identical(other.photo, photo) ||
                const DeepCollectionEquality().equals(other.photo, photo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(photo);

  @JsonKey(ignore: true)
  @override
  _$LoadPhotoCopyWith<_LoadPhoto> get copyWith =>
      __$LoadPhotoCopyWithImpl<_LoadPhoto>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SelectPhotoType photo) loadPhoto,
    required TResult Function(ESightType? selectedType) changeSelectedType,
    required TResult Function(String? name) changeName,
    required TResult Function(String? description) changeDescription,
    required TResult Function(double? lat) changeLat,
    required TResult Function(double? long) changeLong,
    required TResult Function(Uint8List? value) removePhoto,
    required TResult Function() save,
  }) {
    return loadPhoto(photo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SelectPhotoType photo)? loadPhoto,
    TResult Function(ESightType? selectedType)? changeSelectedType,
    TResult Function(String? name)? changeName,
    TResult Function(String? description)? changeDescription,
    TResult Function(double? lat)? changeLat,
    TResult Function(double? long)? changeLong,
    TResult Function(Uint8List? value)? removePhoto,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (loadPhoto != null) {
      return loadPhoto(photo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadPhoto value) loadPhoto,
    required TResult Function(_ChangeSelectedType value) changeSelectedType,
    required TResult Function(_ChangeName value) changeName,
    required TResult Function(_ChangeDescription value) changeDescription,
    required TResult Function(_ChangeLat value) changeLat,
    required TResult Function(_ChangeLong value) changeLong,
    required TResult Function(_RemovePhoto value) removePhoto,
    required TResult Function(_Save value) save,
  }) {
    return loadPhoto(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadPhoto value)? loadPhoto,
    TResult Function(_ChangeSelectedType value)? changeSelectedType,
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ChangeDescription value)? changeDescription,
    TResult Function(_ChangeLat value)? changeLat,
    TResult Function(_ChangeLong value)? changeLong,
    TResult Function(_RemovePhoto value)? removePhoto,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (loadPhoto != null) {
      return loadPhoto(this);
    }
    return orElse();
  }
}

abstract class _LoadPhoto implements AddSightFormEvent {
  const factory _LoadPhoto(SelectPhotoType photo) = _$_LoadPhoto;

  SelectPhotoType get photo => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadPhotoCopyWith<_LoadPhoto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeSelectedTypeCopyWith<$Res> {
  factory _$ChangeSelectedTypeCopyWith(
          _ChangeSelectedType value, $Res Function(_ChangeSelectedType) then) =
      __$ChangeSelectedTypeCopyWithImpl<$Res>;
  $Res call({ESightType? selectedType});
}

/// @nodoc
class __$ChangeSelectedTypeCopyWithImpl<$Res>
    extends _$AddSightFormEventCopyWithImpl<$Res>
    implements _$ChangeSelectedTypeCopyWith<$Res> {
  __$ChangeSelectedTypeCopyWithImpl(
      _ChangeSelectedType _value, $Res Function(_ChangeSelectedType) _then)
      : super(_value, (v) => _then(v as _ChangeSelectedType));

  @override
  _ChangeSelectedType get _value => super._value as _ChangeSelectedType;

  @override
  $Res call({
    Object? selectedType = freezed,
  }) {
    return _then(_ChangeSelectedType(
      selectedType == freezed
          ? _value.selectedType
          : selectedType // ignore: cast_nullable_to_non_nullable
              as ESightType?,
    ));
  }
}

/// @nodoc

class _$_ChangeSelectedType implements _ChangeSelectedType {
  const _$_ChangeSelectedType(this.selectedType);

  @override
  final ESightType? selectedType;

  @override
  String toString() {
    return 'AddSightFormEvent.changeSelectedType(selectedType: $selectedType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeSelectedType &&
            (identical(other.selectedType, selectedType) ||
                const DeepCollectionEquality()
                    .equals(other.selectedType, selectedType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(selectedType);

  @JsonKey(ignore: true)
  @override
  _$ChangeSelectedTypeCopyWith<_ChangeSelectedType> get copyWith =>
      __$ChangeSelectedTypeCopyWithImpl<_ChangeSelectedType>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SelectPhotoType photo) loadPhoto,
    required TResult Function(ESightType? selectedType) changeSelectedType,
    required TResult Function(String? name) changeName,
    required TResult Function(String? description) changeDescription,
    required TResult Function(double? lat) changeLat,
    required TResult Function(double? long) changeLong,
    required TResult Function(Uint8List? value) removePhoto,
    required TResult Function() save,
  }) {
    return changeSelectedType(selectedType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SelectPhotoType photo)? loadPhoto,
    TResult Function(ESightType? selectedType)? changeSelectedType,
    TResult Function(String? name)? changeName,
    TResult Function(String? description)? changeDescription,
    TResult Function(double? lat)? changeLat,
    TResult Function(double? long)? changeLong,
    TResult Function(Uint8List? value)? removePhoto,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (changeSelectedType != null) {
      return changeSelectedType(selectedType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadPhoto value) loadPhoto,
    required TResult Function(_ChangeSelectedType value) changeSelectedType,
    required TResult Function(_ChangeName value) changeName,
    required TResult Function(_ChangeDescription value) changeDescription,
    required TResult Function(_ChangeLat value) changeLat,
    required TResult Function(_ChangeLong value) changeLong,
    required TResult Function(_RemovePhoto value) removePhoto,
    required TResult Function(_Save value) save,
  }) {
    return changeSelectedType(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadPhoto value)? loadPhoto,
    TResult Function(_ChangeSelectedType value)? changeSelectedType,
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ChangeDescription value)? changeDescription,
    TResult Function(_ChangeLat value)? changeLat,
    TResult Function(_ChangeLong value)? changeLong,
    TResult Function(_RemovePhoto value)? removePhoto,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (changeSelectedType != null) {
      return changeSelectedType(this);
    }
    return orElse();
  }
}

abstract class _ChangeSelectedType implements AddSightFormEvent {
  const factory _ChangeSelectedType(ESightType? selectedType) =
      _$_ChangeSelectedType;

  ESightType? get selectedType => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeSelectedTypeCopyWith<_ChangeSelectedType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeNameCopyWith<$Res> {
  factory _$ChangeNameCopyWith(
          _ChangeName value, $Res Function(_ChangeName) then) =
      __$ChangeNameCopyWithImpl<$Res>;
  $Res call({String? name});
}

/// @nodoc
class __$ChangeNameCopyWithImpl<$Res>
    extends _$AddSightFormEventCopyWithImpl<$Res>
    implements _$ChangeNameCopyWith<$Res> {
  __$ChangeNameCopyWithImpl(
      _ChangeName _value, $Res Function(_ChangeName) _then)
      : super(_value, (v) => _then(v as _ChangeName));

  @override
  _ChangeName get _value => super._value as _ChangeName;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_ChangeName(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ChangeName implements _ChangeName {
  const _$_ChangeName(this.name);

  @override
  final String? name;

  @override
  String toString() {
    return 'AddSightFormEvent.changeName(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeName &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$ChangeNameCopyWith<_ChangeName> get copyWith =>
      __$ChangeNameCopyWithImpl<_ChangeName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SelectPhotoType photo) loadPhoto,
    required TResult Function(ESightType? selectedType) changeSelectedType,
    required TResult Function(String? name) changeName,
    required TResult Function(String? description) changeDescription,
    required TResult Function(double? lat) changeLat,
    required TResult Function(double? long) changeLong,
    required TResult Function(Uint8List? value) removePhoto,
    required TResult Function() save,
  }) {
    return changeName(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SelectPhotoType photo)? loadPhoto,
    TResult Function(ESightType? selectedType)? changeSelectedType,
    TResult Function(String? name)? changeName,
    TResult Function(String? description)? changeDescription,
    TResult Function(double? lat)? changeLat,
    TResult Function(double? long)? changeLong,
    TResult Function(Uint8List? value)? removePhoto,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (changeName != null) {
      return changeName(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadPhoto value) loadPhoto,
    required TResult Function(_ChangeSelectedType value) changeSelectedType,
    required TResult Function(_ChangeName value) changeName,
    required TResult Function(_ChangeDescription value) changeDescription,
    required TResult Function(_ChangeLat value) changeLat,
    required TResult Function(_ChangeLong value) changeLong,
    required TResult Function(_RemovePhoto value) removePhoto,
    required TResult Function(_Save value) save,
  }) {
    return changeName(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadPhoto value)? loadPhoto,
    TResult Function(_ChangeSelectedType value)? changeSelectedType,
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ChangeDescription value)? changeDescription,
    TResult Function(_ChangeLat value)? changeLat,
    TResult Function(_ChangeLong value)? changeLong,
    TResult Function(_RemovePhoto value)? removePhoto,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (changeName != null) {
      return changeName(this);
    }
    return orElse();
  }
}

abstract class _ChangeName implements AddSightFormEvent {
  const factory _ChangeName(String? name) = _$_ChangeName;

  String? get name => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeNameCopyWith<_ChangeName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeDescriptionCopyWith<$Res> {
  factory _$ChangeDescriptionCopyWith(
          _ChangeDescription value, $Res Function(_ChangeDescription) then) =
      __$ChangeDescriptionCopyWithImpl<$Res>;
  $Res call({String? description});
}

/// @nodoc
class __$ChangeDescriptionCopyWithImpl<$Res>
    extends _$AddSightFormEventCopyWithImpl<$Res>
    implements _$ChangeDescriptionCopyWith<$Res> {
  __$ChangeDescriptionCopyWithImpl(
      _ChangeDescription _value, $Res Function(_ChangeDescription) _then)
      : super(_value, (v) => _then(v as _ChangeDescription));

  @override
  _ChangeDescription get _value => super._value as _ChangeDescription;

  @override
  $Res call({
    Object? description = freezed,
  }) {
    return _then(_ChangeDescription(
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ChangeDescription implements _ChangeDescription {
  const _$_ChangeDescription(this.description);

  @override
  final String? description;

  @override
  String toString() {
    return 'AddSightFormEvent.changeDescription(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeDescription &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  _$ChangeDescriptionCopyWith<_ChangeDescription> get copyWith =>
      __$ChangeDescriptionCopyWithImpl<_ChangeDescription>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SelectPhotoType photo) loadPhoto,
    required TResult Function(ESightType? selectedType) changeSelectedType,
    required TResult Function(String? name) changeName,
    required TResult Function(String? description) changeDescription,
    required TResult Function(double? lat) changeLat,
    required TResult Function(double? long) changeLong,
    required TResult Function(Uint8List? value) removePhoto,
    required TResult Function() save,
  }) {
    return changeDescription(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SelectPhotoType photo)? loadPhoto,
    TResult Function(ESightType? selectedType)? changeSelectedType,
    TResult Function(String? name)? changeName,
    TResult Function(String? description)? changeDescription,
    TResult Function(double? lat)? changeLat,
    TResult Function(double? long)? changeLong,
    TResult Function(Uint8List? value)? removePhoto,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (changeDescription != null) {
      return changeDescription(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadPhoto value) loadPhoto,
    required TResult Function(_ChangeSelectedType value) changeSelectedType,
    required TResult Function(_ChangeName value) changeName,
    required TResult Function(_ChangeDescription value) changeDescription,
    required TResult Function(_ChangeLat value) changeLat,
    required TResult Function(_ChangeLong value) changeLong,
    required TResult Function(_RemovePhoto value) removePhoto,
    required TResult Function(_Save value) save,
  }) {
    return changeDescription(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadPhoto value)? loadPhoto,
    TResult Function(_ChangeSelectedType value)? changeSelectedType,
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ChangeDescription value)? changeDescription,
    TResult Function(_ChangeLat value)? changeLat,
    TResult Function(_ChangeLong value)? changeLong,
    TResult Function(_RemovePhoto value)? removePhoto,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (changeDescription != null) {
      return changeDescription(this);
    }
    return orElse();
  }
}

abstract class _ChangeDescription implements AddSightFormEvent {
  const factory _ChangeDescription(String? description) = _$_ChangeDescription;

  String? get description => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeDescriptionCopyWith<_ChangeDescription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeLatCopyWith<$Res> {
  factory _$ChangeLatCopyWith(
          _ChangeLat value, $Res Function(_ChangeLat) then) =
      __$ChangeLatCopyWithImpl<$Res>;
  $Res call({double? lat});
}

/// @nodoc
class __$ChangeLatCopyWithImpl<$Res>
    extends _$AddSightFormEventCopyWithImpl<$Res>
    implements _$ChangeLatCopyWith<$Res> {
  __$ChangeLatCopyWithImpl(_ChangeLat _value, $Res Function(_ChangeLat) _then)
      : super(_value, (v) => _then(v as _ChangeLat));

  @override
  _ChangeLat get _value => super._value as _ChangeLat;

  @override
  $Res call({
    Object? lat = freezed,
  }) {
    return _then(_ChangeLat(
      lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$_ChangeLat implements _ChangeLat {
  const _$_ChangeLat(this.lat);

  @override
  final double? lat;

  @override
  String toString() {
    return 'AddSightFormEvent.changeLat(lat: $lat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeLat &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(lat);

  @JsonKey(ignore: true)
  @override
  _$ChangeLatCopyWith<_ChangeLat> get copyWith =>
      __$ChangeLatCopyWithImpl<_ChangeLat>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SelectPhotoType photo) loadPhoto,
    required TResult Function(ESightType? selectedType) changeSelectedType,
    required TResult Function(String? name) changeName,
    required TResult Function(String? description) changeDescription,
    required TResult Function(double? lat) changeLat,
    required TResult Function(double? long) changeLong,
    required TResult Function(Uint8List? value) removePhoto,
    required TResult Function() save,
  }) {
    return changeLat(lat);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SelectPhotoType photo)? loadPhoto,
    TResult Function(ESightType? selectedType)? changeSelectedType,
    TResult Function(String? name)? changeName,
    TResult Function(String? description)? changeDescription,
    TResult Function(double? lat)? changeLat,
    TResult Function(double? long)? changeLong,
    TResult Function(Uint8List? value)? removePhoto,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (changeLat != null) {
      return changeLat(lat);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadPhoto value) loadPhoto,
    required TResult Function(_ChangeSelectedType value) changeSelectedType,
    required TResult Function(_ChangeName value) changeName,
    required TResult Function(_ChangeDescription value) changeDescription,
    required TResult Function(_ChangeLat value) changeLat,
    required TResult Function(_ChangeLong value) changeLong,
    required TResult Function(_RemovePhoto value) removePhoto,
    required TResult Function(_Save value) save,
  }) {
    return changeLat(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadPhoto value)? loadPhoto,
    TResult Function(_ChangeSelectedType value)? changeSelectedType,
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ChangeDescription value)? changeDescription,
    TResult Function(_ChangeLat value)? changeLat,
    TResult Function(_ChangeLong value)? changeLong,
    TResult Function(_RemovePhoto value)? removePhoto,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (changeLat != null) {
      return changeLat(this);
    }
    return orElse();
  }
}

abstract class _ChangeLat implements AddSightFormEvent {
  const factory _ChangeLat(double? lat) = _$_ChangeLat;

  double? get lat => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeLatCopyWith<_ChangeLat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeLongCopyWith<$Res> {
  factory _$ChangeLongCopyWith(
          _ChangeLong value, $Res Function(_ChangeLong) then) =
      __$ChangeLongCopyWithImpl<$Res>;
  $Res call({double? long});
}

/// @nodoc
class __$ChangeLongCopyWithImpl<$Res>
    extends _$AddSightFormEventCopyWithImpl<$Res>
    implements _$ChangeLongCopyWith<$Res> {
  __$ChangeLongCopyWithImpl(
      _ChangeLong _value, $Res Function(_ChangeLong) _then)
      : super(_value, (v) => _then(v as _ChangeLong));

  @override
  _ChangeLong get _value => super._value as _ChangeLong;

  @override
  $Res call({
    Object? long = freezed,
  }) {
    return _then(_ChangeLong(
      long == freezed
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$_ChangeLong implements _ChangeLong {
  const _$_ChangeLong(this.long);

  @override
  final double? long;

  @override
  String toString() {
    return 'AddSightFormEvent.changeLong(long: $long)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeLong &&
            (identical(other.long, long) ||
                const DeepCollectionEquality().equals(other.long, long)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(long);

  @JsonKey(ignore: true)
  @override
  _$ChangeLongCopyWith<_ChangeLong> get copyWith =>
      __$ChangeLongCopyWithImpl<_ChangeLong>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SelectPhotoType photo) loadPhoto,
    required TResult Function(ESightType? selectedType) changeSelectedType,
    required TResult Function(String? name) changeName,
    required TResult Function(String? description) changeDescription,
    required TResult Function(double? lat) changeLat,
    required TResult Function(double? long) changeLong,
    required TResult Function(Uint8List? value) removePhoto,
    required TResult Function() save,
  }) {
    return changeLong(long);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SelectPhotoType photo)? loadPhoto,
    TResult Function(ESightType? selectedType)? changeSelectedType,
    TResult Function(String? name)? changeName,
    TResult Function(String? description)? changeDescription,
    TResult Function(double? lat)? changeLat,
    TResult Function(double? long)? changeLong,
    TResult Function(Uint8List? value)? removePhoto,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (changeLong != null) {
      return changeLong(long);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadPhoto value) loadPhoto,
    required TResult Function(_ChangeSelectedType value) changeSelectedType,
    required TResult Function(_ChangeName value) changeName,
    required TResult Function(_ChangeDescription value) changeDescription,
    required TResult Function(_ChangeLat value) changeLat,
    required TResult Function(_ChangeLong value) changeLong,
    required TResult Function(_RemovePhoto value) removePhoto,
    required TResult Function(_Save value) save,
  }) {
    return changeLong(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadPhoto value)? loadPhoto,
    TResult Function(_ChangeSelectedType value)? changeSelectedType,
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ChangeDescription value)? changeDescription,
    TResult Function(_ChangeLat value)? changeLat,
    TResult Function(_ChangeLong value)? changeLong,
    TResult Function(_RemovePhoto value)? removePhoto,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (changeLong != null) {
      return changeLong(this);
    }
    return orElse();
  }
}

abstract class _ChangeLong implements AddSightFormEvent {
  const factory _ChangeLong(double? long) = _$_ChangeLong;

  double? get long => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeLongCopyWith<_ChangeLong> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RemovePhotoCopyWith<$Res> {
  factory _$RemovePhotoCopyWith(
          _RemovePhoto value, $Res Function(_RemovePhoto) then) =
      __$RemovePhotoCopyWithImpl<$Res>;
  $Res call({Uint8List? value});
}

/// @nodoc
class __$RemovePhotoCopyWithImpl<$Res>
    extends _$AddSightFormEventCopyWithImpl<$Res>
    implements _$RemovePhotoCopyWith<$Res> {
  __$RemovePhotoCopyWithImpl(
      _RemovePhoto _value, $Res Function(_RemovePhoto) _then)
      : super(_value, (v) => _then(v as _RemovePhoto));

  @override
  _RemovePhoto get _value => super._value as _RemovePhoto;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_RemovePhoto(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc

class _$_RemovePhoto implements _RemovePhoto {
  const _$_RemovePhoto(this.value);

  @override
  final Uint8List? value;

  @override
  String toString() {
    return 'AddSightFormEvent.removePhoto(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RemovePhoto &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$RemovePhotoCopyWith<_RemovePhoto> get copyWith =>
      __$RemovePhotoCopyWithImpl<_RemovePhoto>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SelectPhotoType photo) loadPhoto,
    required TResult Function(ESightType? selectedType) changeSelectedType,
    required TResult Function(String? name) changeName,
    required TResult Function(String? description) changeDescription,
    required TResult Function(double? lat) changeLat,
    required TResult Function(double? long) changeLong,
    required TResult Function(Uint8List? value) removePhoto,
    required TResult Function() save,
  }) {
    return removePhoto(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SelectPhotoType photo)? loadPhoto,
    TResult Function(ESightType? selectedType)? changeSelectedType,
    TResult Function(String? name)? changeName,
    TResult Function(String? description)? changeDescription,
    TResult Function(double? lat)? changeLat,
    TResult Function(double? long)? changeLong,
    TResult Function(Uint8List? value)? removePhoto,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (removePhoto != null) {
      return removePhoto(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadPhoto value) loadPhoto,
    required TResult Function(_ChangeSelectedType value) changeSelectedType,
    required TResult Function(_ChangeName value) changeName,
    required TResult Function(_ChangeDescription value) changeDescription,
    required TResult Function(_ChangeLat value) changeLat,
    required TResult Function(_ChangeLong value) changeLong,
    required TResult Function(_RemovePhoto value) removePhoto,
    required TResult Function(_Save value) save,
  }) {
    return removePhoto(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadPhoto value)? loadPhoto,
    TResult Function(_ChangeSelectedType value)? changeSelectedType,
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ChangeDescription value)? changeDescription,
    TResult Function(_ChangeLat value)? changeLat,
    TResult Function(_ChangeLong value)? changeLong,
    TResult Function(_RemovePhoto value)? removePhoto,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (removePhoto != null) {
      return removePhoto(this);
    }
    return orElse();
  }
}

abstract class _RemovePhoto implements AddSightFormEvent {
  const factory _RemovePhoto(Uint8List? value) = _$_RemovePhoto;

  Uint8List? get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RemovePhotoCopyWith<_RemovePhoto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SaveCopyWith<$Res> {
  factory _$SaveCopyWith(_Save value, $Res Function(_Save) then) =
      __$SaveCopyWithImpl<$Res>;
}

/// @nodoc
class __$SaveCopyWithImpl<$Res> extends _$AddSightFormEventCopyWithImpl<$Res>
    implements _$SaveCopyWith<$Res> {
  __$SaveCopyWithImpl(_Save _value, $Res Function(_Save) _then)
      : super(_value, (v) => _then(v as _Save));

  @override
  _Save get _value => super._value as _Save;
}

/// @nodoc

class _$_Save implements _Save {
  const _$_Save();

  @override
  String toString() {
    return 'AddSightFormEvent.save()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Save);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SelectPhotoType photo) loadPhoto,
    required TResult Function(ESightType? selectedType) changeSelectedType,
    required TResult Function(String? name) changeName,
    required TResult Function(String? description) changeDescription,
    required TResult Function(double? lat) changeLat,
    required TResult Function(double? long) changeLong,
    required TResult Function(Uint8List? value) removePhoto,
    required TResult Function() save,
  }) {
    return save();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SelectPhotoType photo)? loadPhoto,
    TResult Function(ESightType? selectedType)? changeSelectedType,
    TResult Function(String? name)? changeName,
    TResult Function(String? description)? changeDescription,
    TResult Function(double? lat)? changeLat,
    TResult Function(double? long)? changeLong,
    TResult Function(Uint8List? value)? removePhoto,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadPhoto value) loadPhoto,
    required TResult Function(_ChangeSelectedType value) changeSelectedType,
    required TResult Function(_ChangeName value) changeName,
    required TResult Function(_ChangeDescription value) changeDescription,
    required TResult Function(_ChangeLat value) changeLat,
    required TResult Function(_ChangeLong value) changeLong,
    required TResult Function(_RemovePhoto value) removePhoto,
    required TResult Function(_Save value) save,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadPhoto value)? loadPhoto,
    TResult Function(_ChangeSelectedType value)? changeSelectedType,
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ChangeDescription value)? changeDescription,
    TResult Function(_ChangeLat value)? changeLat,
    TResult Function(_ChangeLong value)? changeLong,
    TResult Function(_RemovePhoto value)? removePhoto,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class _Save implements AddSightFormEvent {
  const factory _Save() = _$_Save;
}
