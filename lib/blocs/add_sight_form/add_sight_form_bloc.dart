import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:places/data/interactor/interactor.dart';
import 'package:places/data/model/model.dart';
import 'package:places/domain/sight_type.dart';
import 'add_sight_form_event.dart';
import 'add_sight_form_state.dart';

export 'add_sight_form_event.dart';
export 'add_sight_form_state.dart';

class AddSightFormBloc extends Bloc<AddSightFormEvent, AddSightFormState> {
  final IPlaceInteractor _placeInteractor;

  AddSightFormBloc(
    this._placeInteractor,
  ) : super(
          AddSightFormState(),
        );

  @override
  Stream<AddSightFormState> mapEventToState(
    AddSightFormEvent event,
  ) =>
      event.map(
        loadPhoto: (_) async* {
          final _currentPhotos = state.photos;

          yield state.copyWith(
            photos: [
              ..._currentPhotos,
              'https://picsum.photos/id/${_currentPhotos.length}/200/300',
            ],
          );
        },
        changeSelectedType: (_event) async* {
          yield state.copyWith(
            selectedType: _event.selectedType,
          );
        },
        changeName: (_event) async* {
          yield state.copyWith(
            name: _event.name,
          );
        },
        changeDescription: (_event) async* {
          yield state.copyWith(
            description: _event.description,
          );
        },
        changeLat: (_event) async* {
          yield state.copyWith(
            lat: _event.lat,
          );
        },
        changeLong: (_event) async* {
          yield state.copyWith(
            long: _event.long,
          );
        },
        removePhoto: (_event) async* {
          final _currentPhotos = state.photos;
          yield state.copyWith(
            photos: _currentPhotos
                .where((element) => element != _event.value)
                .toList(),
          );
        },
        save: (_event) async* {
          await _placeInteractor.addNewPlace(
            Place(
              id: null,
              placeName: state.name,
              description: state.description,
              lat: state.lat,
              lng: state.long,
              placeType: SightType(
                state.selectedType ?? ESightType.other,
              ),
              urls: state.photos,
            ),
          );
        },
      );
}
