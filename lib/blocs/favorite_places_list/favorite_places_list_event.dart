part of 'favorite_places_list_bloc.dart';

@immutable
abstract class FavoritePlacesListEvent {}

class FetchFavoritePlacesListEvent extends FavoritePlacesListEvent {}

class RemoveFavoritePlacesListEvent extends FavoritePlacesListEvent {
  final Place place;

  RemoveFavoritePlacesListEvent(this.place);
}

class ReorderFavoritePlacesListEvent extends FavoritePlacesListEvent {
  final List<Place> places;

  ReorderFavoritePlacesListEvent(this.places);
}
