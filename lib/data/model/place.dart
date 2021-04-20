import 'dart:convert';
import 'package:collection/collection.dart';

class Place {
  final int? id;
  final double? lat;
  final double? lng;
  final String? name;
  final List<String> urls;
  final String? placeType;
  final String? description;

  Place({
    required this.id,
    required this.lat,
    required this.lng,
    required this.name,
    required this.urls,
    required this.placeType,
    required this.description,
  });

  Place.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        lat = json['lat'],
        lng = json['lng'],
        name = json['name'],
        urls = List.from(json['urls']),
        placeType = json['placeType'],
        description = json['description'];

  Map<String, dynamic> toJson() => {
        if (id != null) 'id': id,
        'lat': lat,
        'lng': lng,
        'name': name,
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
          other.name == this.name &&
          ListEquality().equals(other.urls, this.urls) &&
          other.placeType == this.placeType &&
          other.description == this.description;
    }
    return false;
  }

  @override
  int get hashCode => super.hashCode;
}
