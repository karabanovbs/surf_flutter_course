import 'package:collection/collection.dart';
import 'package:places/res/text_constants.dart';

enum ESightType {
  temple,
  monument,
  park,
  theatre,
  museum,
  hotel,
  restaurant,
  cafe,
  other
}

const _mapSerialize = {
  ESightType.temple: 'temple',
  ESightType.monument: 'monument',
  ESightType.park: 'park',
  ESightType.theatre: 'theatre',
  ESightType.museum: 'museum',
  ESightType.hotel: 'hotel',
  ESightType.restaurant: 'restaurant',
  ESightType.cafe: 'cafe',
  ESightType.other: 'other',
};

class SightType {
  final ESightType type;
  final String label;

  factory SightType.parse(String name) {
    final type = _mapSerialize.entries.firstWhereOrNull(
      (element) => element.value == name,
    )?.key ?? ESightType.other;
    return SightType(type);
  }

  factory SightType(ESightType type) {
    switch (type) {
      case ESightType.restaurant:
        return SightType.restaurant();
      case ESightType.theatre:
        return SightType.theatre();
      case ESightType.museum:
        return SightType.museum();
      case ESightType.cafe:
        return SightType.cafe();
      case ESightType.hotel:
        return SightType.hotel();
      case ESightType.park:
        return SightType.park();
      case ESightType.temple:
        return SightType.temple();
      case ESightType.monument:
        return SightType.monument();
      case ESightType.other:
        return SightType.other();
    }
  }

  SightType.restaurant()
      : type = ESightType.restaurant,
        label = sightTypeRestaurant;

  SightType.theatre()
      : type = ESightType.theatre,
        label = sightTypeTheatre;

  SightType.museum()
      : type = ESightType.museum,
        label = sightTypeMuseum;

  SightType.cafe()
      : type = ESightType.cafe,
        label = sightTypeCafe;

  SightType.hotel()
      : type = ESightType.hotel,
        label = sightTypeHotel;

  SightType.park()
      : type = ESightType.park,
        label = sightTypePark;

  SightType.temple()
      : type = ESightType.temple,
        label = sightTypeTemple;

  SightType.monument()
      : type = ESightType.monument,
        label = sightTypeMonument;

  SightType.other()
      : type = ESightType.other,
        label = sightTypeOther;

  @override
  bool operator ==(Object other) {
    if (other is SightType) {
      return this.type == other.type;
    }

    if (other is ESightType) {
      return this.type == other;
    }
    return false;
  }

  @override
  int get hashCode => type.hashCode;

  @override
  String toString() {
    return _mapSerialize[type] ?? _mapSerialize[ESightType.other]!;
  }
}
