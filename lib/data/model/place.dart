import 'dart:convert';
import 'package:collection/collection.dart';
import 'package:places/domain/sight.dart';
import 'package:places/domain/sight_type.dart';

// Обходной костыль с реализацией, лень рефакторить
class Place implements Sight {
  final int? id;
  final double? lat;
  final double? lng;
  final String? placeName;
  final List<String> urls;
  final String? placeType;
  final String? description;

  Place({
    required this.id,
    required this.lat,
    required this.lng,
    required this.placeName,
    required this.urls,
    required this.placeType,
    required this.description,
  });

  // руками конечно такое лучше не писать
  Place.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        lat = json['lat'],
        lng = json['lng'],
        placeName = json['name'],
        urls = List.from(json['urls']),
        placeType = json['placeType'],
        description = json['description'];

  Map<String, dynamic> toJson() => {
        if (id != null) 'id': id,
        'lat': lat,
        'lng': lng,
        'name': placeName,
        'urls': urls,
        'placeType': placeType,
        'description': description,
      };

  @override
  bool operator ==(Object other) {
    if (other is Place) {
      return other.id == this.id &&
          other.id == this.id &&
          other.lat == this.lat &&
          other.lng == this.lng &&
          other.placeName == this.placeName &&
          ListEquality().equals(other.urls, this.urls) &&
          other.placeType == this.placeType &&
          other.description == this.description;
    }
    return false;
  }

  @override
  int get hashCode => super.hashCode;

  @override
  String? get details => description;

  @override
  double? get lon => lng;

  @override
  String get name => placeType ?? '';

  @override
  SightType get type => SightType.custom(placeType);

  @override
  String get url => urls.firstOrNull ?? '';
}
