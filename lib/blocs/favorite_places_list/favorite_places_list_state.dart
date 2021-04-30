part of 'favorite_places_list_bloc.dart';

@immutable
abstract class FavoritePlacesListState {}

class InitialFavoritePlacesListState extends FavoritePlacesListState {}

class LoadingFavoritePlacesListState extends FavoritePlacesListState {}

class SuccessFavoritePlacesListState extends FavoritePlacesListState {
  final List<Place> places;

  SuccessFavoritePlacesListState(this.places);
}

class FailureFavoritePlacesListState extends FavoritePlacesListState {}
