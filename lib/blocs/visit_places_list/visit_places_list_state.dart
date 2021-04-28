part of 'visit_places_list_bloc.dart';

@immutable
abstract class VisitPlacesListState {}

class InitialVisitPlacesListState extends VisitPlacesListState {}

class LoadingVisitPlacesListState extends VisitPlacesListState {}

class SuccessVisitPlacesListState extends VisitPlacesListState {
  final List<Place> places;

  SuccessVisitPlacesListState(this.places);
}

class FailureVisitPlacesListState extends VisitPlacesListState {}
