import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:places/domain/sight_type.dart';
import 'package:places/ui/widgets/select_photo_dialog.dart';

part 'add_sight_form_event.freezed.dart';

@freezed
class AddSightFormEvent with _$AddSightFormEvent {
    const factory AddSightFormEvent.loadPhoto(SelectPhotoType photo) = _LoadPhoto;

    const factory AddSightFormEvent.changeSelectedType(ESightType? selectedType) = _ChangeSelectedType;
    const factory AddSightFormEvent.changeName(String? name) = _ChangeName;
    const factory AddSightFormEvent.changeDescription(String? description) = _ChangeDescription;
    const factory AddSightFormEvent.changeLat(double? lat) = _ChangeLat;
    const factory AddSightFormEvent.changeLong(double? long) = _ChangeLong;

    const factory AddSightFormEvent.removePhoto(Uint8List? value) = _RemovePhoto;
    const factory AddSightFormEvent.save() = _Save;
}


