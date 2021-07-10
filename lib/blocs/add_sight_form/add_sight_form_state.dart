import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:places/domain/sight_type.dart';

part 'add_sight_form_state.freezed.dart';

@freezed
class AddSightFormState with _$AddSightFormState {
  AddSightFormState._();

  factory AddSightFormState({
    ESightType? selectedType,
    String? name,
    String? description,
    double? lat,
    double? long,
    @Default([]) List<Uint8List> photos,
  }) = _AddSightFormState;

  bool get canSave =>
      selectedType != null && name != null && lat != null && long != null;
}
