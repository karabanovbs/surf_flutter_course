import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:places/data/model/model.dart';
import 'package:places/data/repository/place_repository.dart';
import 'package:places/dio_client.dart';

void main() {
  group('networking', () {
    test('dio jsonplaceholder/users', () async {
      await dioClient.get('https://jsonplaceholder.typicode.com/users');
    });

    group('Place serialization', () {
      test('toJson', () async {
        var place = Place(
          id: 172,
          name: 'особое место',
          description: 'описание',
          lat: 60.01693,
          lng: 30.61895,
          placeType: 'other',
          urls: [
            'https://test-backend-flutter.surfstudio.ru/files/1616508391032.jpg',
            'https://test-backend-flutter.surfstudio.ru/files/1616508391033.jpg'
          ],
        );

        var json = jsonEncode(place.toJson());
        expect(json,
            '{"id":172,"lat":60.01693,"lng":30.61895,"name":"особое место","urls":["https://test-backend-flutter.surfstudio.ru/files/1616508391032.jpg","https://test-backend-flutter.surfstudio.ru/files/1616508391033.jpg"],"placeType":"other","description":"описание"}');
      });

      test('fromJson', () async {
        var json = jsonDecode(
            '{"id":172,"lat":60.01693,"lng":30.61895,"name":"особое место","urls":["https://test-backend-flutter.surfstudio.ru/files/1616508391032.jpg","https://test-backend-flutter.surfstudio.ru/files/1616508391033.jpg"],"placeType":"other","description":"описание"}');

        var place = Place.fromJson(json);
        expect(
          place,
          Place(
            id: 172,
            name: 'особое место',
            description: 'описание',
            lat: 60.01693,
            lng: 30.61895,
            placeType: 'other',
            urls: [
              'https://test-backend-flutter.surfstudio.ru/files/1616508391032.jpg',
              'https://test-backend-flutter.surfstudio.ru/files/1616508391033.jpg'
            ],
          ),
        );
      });
    });

    group('dio DioPlaceRepository', () {
      late DioPlaceRepository _repo;

      setUp(() {
        _repo = DioPlaceRepository(dioClient);
      });

      test('postFilteredPlaces', () async {
        var list = await _repo.postFilteredPlaces(
          PlacesFilter(
            nameFilter: 'место',
          ),
        );
      });

      test('getPlaces', () async {
        var list = await _repo.getPlaces();
      });

      test('postPlace', () async {
        var place = await _repo.postPlace(
          Place(
            id: null,
            lat: 0,
            lng: 0,
            name: 'test',
            urls: [],
            placeType: 'temple',
            description: 'test',
          ),
        );
      });
    });
  });
}
