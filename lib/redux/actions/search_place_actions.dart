import 'package:places/data/model/model.dart';

abstract class ISearchPlaceAction {}

abstract class ISearchPlaceLoadHistoryAction extends ISearchPlaceAction {}

class SearchPlaceLoadHistoryAction extends ISearchPlaceLoadHistoryAction {}

class SearchPlaceLoadHistorySuccessAction
    extends ISearchPlaceLoadHistoryAction {
  final List<String> value;

  SearchPlaceLoadHistorySuccessAction(this.value);
}

class SearchPlaceLoadHistoryFailureAction
    extends ISearchPlaceLoadHistoryAction {}

class SearchPlaceClearHistoryFailureAction
    extends ISearchPlaceLoadHistoryAction {}

class SearchPlaceRemoveHistoryFailureAction
    extends ISearchPlaceLoadHistoryAction {
  final String value;

  SearchPlaceRemoveHistoryFailureAction(this.value);
}

abstract class ISearchPlaceSearchAction extends ISearchPlaceAction {}

class SearchPlaceSearchAction extends ISearchPlaceSearchAction {
  final String search;

  SearchPlaceSearchAction(this.search);
}

class SearchPlaceSearchSuccessAction extends ISearchPlaceSearchAction {
  final List<Place> value;

  SearchPlaceSearchSuccessAction(this.value);
}

class SearchPlaceSearchFailureAction extends ISearchPlaceSearchAction {}
