import 'package:mobx/mobx.dart';
import 'package:places/data/interactor/interactor.dart';
import 'package:places/data/model/model.dart';

part 'sight_favorite_store.g.dart';

class SightFavoriteStore = SightFavoriteStoreBase with _$SightFavoriteStore;

abstract class SightFavoriteStoreBase with Store {
  final IPlaceInteractor _interactor;
  final Place _place;

  @observable
  bool isFavorite = false;

  SightFavoriteStoreBase(this._interactor, this._place);

  @action
  Future<void> checkIsFavorite() async {
    isFavorite = await _interactor.isFavoritePlace(_place);
  }

  @action
  Future<void> addToFavorites(Place place) async {
    await _interactor.addToFavorites(place);
    isFavorite = await _interactor.isFavoritePlace(_place);
  }

  @action
  Future<void> removeFromFavorites(Place place) async {
    await _interactor.removeFromFavorites(place);
    isFavorite = await _interactor.isFavoritePlace(_place);
  }
}
