import 'package:dio/dio.dart';
import 'package:places/data/model/model.dart';
import 'package:places/exceptions/exceptions.dart';

class PlacesFilter {
  final double? lat;
  final double? lng;
  final double? radius;
  final List<String> typeFilter;
  final String? nameFilter;

  PlacesFilter({
    this.lat,
    this.lng,
    this.radius,
    this.typeFilter = const [],
    this.nameFilter,
  });

  Map<String, dynamic> toJson() => {
        if (lat != null && lng != null && radius != null) 'lat': lat,
        if (lat != null && lng != null && radius != null) 'lng': lng,
        if (lat != null && lng != null && radius != null) 'radius': radius,
        'typeFilter': typeFilter,
        if (nameFilter != null) 'nameFilter': nameFilter,
      };
}

abstract class IPlaceRepository {
  Future<Place> postPlace(Place place);

  Future<List<Place>> getPlaces({
    int? count,
    int? offset,
    String? pageBy,
    String? pageAfter,
    String? pagePrior,
    String? sortBy,
  });

  Future<Place> getPlace(int id);

  Future<void> deletePlace(String id);

  Future<Place> putPlace(
    String id,
    Place place,
  );

  Future<List<Place>> postFilteredPlaces(PlacesFilter filter);
}

class DioPlaceRepository extends IPlaceRepository {
  final Dio _dioClient;

  DioPlaceRepository(this._dioClient);

  @override
  Future<void> deletePlace(String id) {
    return _dioClient.delete('/place/$id').catchError(
          handleDioException,
          test: (error) => error is DioError,
        );
  }

  @override
  Future<Place> getPlace(int id) {
    return _dioClient
        .get('/place/$id')
        .then((value) => value.data)
        .then((json) => Place.fromJson(json))
        .catchError(
          handleDioException,
          test: (error) => error is DioError,
        );
  }

  @override
  Future<List<Place>> getPlaces({
    int? count,
    int? offset,
    String? pageBy,
    String? pageAfter,
    String? pagePrior,
    String? sortBy,
  }) {
    return _dioClient
        .get('/place')
        .then((value) => value.data)
        .then(
          (json) => List<Place>.from(
            json.map(
              (model) => Place.fromJson(model),
            ),
          ),
        )
        .catchError(
          handleDioException,
          test: (error) => error is DioError,
        );
  }

  handleDioException(dynamic error) async {
    if (error is DioError) {
      if (error.response != null) {
        throw NetworkException(error.requestOptions.path, error.response!.data);
      } else {
        throw NetworkException(error.requestOptions.path, error.message);
      }
    }
  }

  @override
  Future<List<Place>> postFilteredPlaces(PlacesFilter filter) {
    return _dioClient
        .post(
          '/filtered_places',
          data: filter.toJson(),
        )
        .then((value) {
          return value.data;
        })
        .then(
          (json) => List<Place>.from(
            json.map(
              (model) => Place.fromJson(model),
            ),
          ),
        )
        .catchError(
          handleDioException,
          test: (error) => error is DioError,
        );
  }

  @override
  Future<Place> postPlace(Place place) {
    return _dioClient
        .post(
          '/place',
          data: place.toJson(),
        )
        .then((value) => value.data)
        .then(
          (json) => Place.fromJson(json),
        )
        .catchError(
          handleDioException,
          test: (error) => error is DioError,
        );
  }

  @override
  Future<Place> putPlace(String id, Place place) {
    return _dioClient
        .put(
          '/place/$id',
          data: place.toJson(),
        )
        .then((value) => value.data)
        .then(
          (json) => Place.fromJson(json),
        )
        .catchError(
          handleDioException,
          test: (error) => error is DioError,
        );
  }
}
