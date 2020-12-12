import 'package:flutter/foundation.dart';

enum SightType { unknown }

/// Sight model
class Sight {
  final String name;
  final double lat;
  final double lon;
  final String url;
  final String details;
  final SightType type;

  Sight(
      {@required this.name,
      @required this.lat,
      @required this.lon,
      @required this.url,
      @required this.details,
      @required this.type});
}
