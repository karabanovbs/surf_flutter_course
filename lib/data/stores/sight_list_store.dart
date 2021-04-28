import 'package:mobx/mobx.dart';
import 'package:places/data/interactor/interactor.dart';
import 'package:places/data/model/model.dart';

part 'sight_list_store.g.dart';

class SightListStore = SightListStoreBase with _$SightListStore;

abstract class SightListStoreBase with Store {
  final IPlaceInteractor _interactor;

  @observable
  ObservableFuture<List<Place>>? places;

  SightListStoreBase(this._interactor);

  @action
  void loadPlaces() {
    places = ObservableFuture(_interactor.getPlaces(null, []));
  }
}
