import 'package:mwwm/mwwm.dart';
import 'package:places/data/interactor/interactor.dart';
import 'package:places/data/model/model.dart';
import 'package:places/domain/sight_type.dart';
import 'package:relation/relation.dart';
import 'package:rxdart/rxdart.dart';

class AddSightWidgetModel extends WidgetModel {
  AddSightWidgetModel(
    WidgetModelDependencies baseDependencies,
    this._placeInteractor,
  ) : super(baseDependencies);

  final IPlaceInteractor _placeInteractor;

  final loadPhotoAction = Action<void>();
  final removePhotoAction = Action<String>();
  final savePlace = Action<void>();
  final loadedPhotosStream = StreamedState<List<String>>(<String>[]);
  final selectedTypeStream = StreamedState<ESightType?>();
  final nameStream = StreamedState<String?>();
  final descriptionStream = StreamedState<String?>();
  final longStream = StreamedState<double?>();
  final latStream = StreamedState<double?>();
  final canSaveStream = StreamedState<bool>(false);

  @override
  void onBind() {
    super.onBind();

    subscribe(loadPhotoAction.stream, (_) {
      _loadPhoto();
    });

    subscribe(removePhotoAction.stream, (String? value) {
      _removePhoto(value);
    });

    subscribe(savePlace.stream, (_) {
      _savePlace(
        selectedType: selectedTypeStream.value,
        name: nameStream.value,
        description: descriptionStream.value,
        lat: latStream.value,
        long: longStream.value,
        photos: loadedPhotosStream.value,
      );
    });

    subscribe(
        MergeStream([
          selectedTypeStream.stream,
          nameStream.stream,
          latStream.stream,
          longStream.stream,
        ]), (_) {
      _canSave(
        selectedType: selectedTypeStream.value,
        name: nameStream.value,
        lat: latStream.value,
        long: longStream.value,
      );
    });
  }

  void _loadPhoto() async {
    final _currentPhotos = loadedPhotosStream.value ?? [];

    loadedPhotosStream.accept(_currentPhotos
      ..add('https://picsum.photos/id/${_currentPhotos.length}/200/300'));
  }

  void _removePhoto(String? value) {
    final _currentPhotos = loadedPhotosStream.value ?? [];

    loadedPhotosStream
        .accept(_currentPhotos.where((element) => element != value).toList());
  }

  void _savePlace({
    ESightType? selectedType,
    String? name,
    String? description,
    double? lat,
    double? long,
    List<String>? photos,
  }) async {
    await _placeInteractor.addNewPlace(
      Place(
        id: null,
        placeName: name,
        description: description,
        lat: lat,
        lng: long,
        placeType: SightType(
          selectedType ?? ESightType.other,
        ),
        urls: photos ?? [],
      ),
    );
  }

  void _canSave({
    ESightType? selectedType,
    String? name,
    double? lat,
    double? long,
  }) async {
    canSaveStream.accept(
        selectedType != null && name != null && lat != null && long != null);
  }
}
