import 'package:flutter/foundation.dart';
import 'package:places/data/model/model.dart';

@immutable
abstract class ISearchPlaceHistoryState {}

class SearchPlaceHistoryInitState extends ISearchPlaceHistoryState {}

class SearchPlaceHistoryLoadingState extends ISearchPlaceHistoryState {}

class SearchPlaceHistoryFailureState extends ISearchPlaceHistoryState {}

@immutable
class SearchPlaceHistoryState extends ISearchPlaceHistoryState {
  final List<String> searchHistory;

  SearchPlaceHistoryState({
    this.searchHistory = const [],
  });
}

@immutable
abstract class ISearchPlaceState {}

class SearchPlaceInitState extends ISearchPlaceState {}

class SearchPlaceLoadingState extends ISearchPlaceState {}

class SearchPlaceFailureState extends ISearchPlaceState {}

@immutable
class SearchPlaceState extends ISearchPlaceState {
  final List<Place> result;

  SearchPlaceState({
    this.result = const [],
  });
}
