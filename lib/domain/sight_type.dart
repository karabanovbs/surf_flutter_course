import 'package:places/res/text_constants.dart';

enum ESightType {
  cinema,
  restaurant,
  special,
  theatre,
  museum,
  cafe,
  hotel,
  park,
}

class SightType {
  final ESightType type;
  final String label;

  factory SightType(ESightType type) {
    switch (type) {
      case ESightType.cinema:
        return SightType.cinema();
      case ESightType.restaurant:
        return SightType.restaurant();
      case ESightType.special:
        return SightType.special();
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
    }
  }

  SightType.cinema()
      : type = ESightType.cinema,
        label = sightTypeCinema;

  SightType.restaurant()
      : type = ESightType.restaurant,
        label = sightTypeRestaurant;

  SightType.special()
      : type = ESightType.special,
        label = sightTypeSpecial;

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
}
