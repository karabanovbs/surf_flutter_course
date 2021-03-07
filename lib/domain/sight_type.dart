import 'package:places/text_constans.dart';

enum ESightType {
  cinema,
  restaurant,
  special,
  theatre,
  museum,
  cafe,
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
    }
  }

  SightType.cinema()
      : type = ESightType.cinema,
        label = SightTypeCinema;

  SightType.restaurant()
      : type = ESightType.restaurant,
        label = SightTypeRestaurant;

  SightType.special()
      : type = ESightType.special,
        label = SightTypeSpecial;

  SightType.theatre()
      : type = ESightType.theatre,
        label = SightTypeTheatre;

  SightType.museum()
      : type = ESightType.museum,
        label = SightTypeMuseum;

  SightType.cafe()
      : type = ESightType.cafe,
        label = SightTypeCafe;

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
