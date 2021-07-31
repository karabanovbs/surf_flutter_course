import 'package:image_picker/image_picker.dart';
import 'package:moor/moor.dart';

abstract class IMediaPickerService {
  Future<Uint8List> pickImage();

  Future<Uint8List> takeImage();
}

class DefaultMediaPickerService extends IMediaPickerService {
  final picker = ImagePicker();

  @override
  Future<Uint8List> pickImage() async {
    final pickedFile = await picker.getImage(
      source: ImageSource.gallery,
    );
    if (pickedFile != null) {
      return pickedFile.readAsBytes();
    }
    throw Exception('Something Wrong');
  }

  @override
  Future<Uint8List> takeImage() async {
    final pickedFile = await picker.getImage(
      source: ImageSource.camera,
    );
    if (pickedFile != null) {
      return pickedFile.readAsBytes();
    }
    throw Exception('Something Wrong');
  }
}
