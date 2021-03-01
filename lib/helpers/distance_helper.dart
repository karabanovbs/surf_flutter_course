import 'dart:math' as math;

import 'package:flutter/foundation.dart';

class GeoPoint {
  final double latitude;
  final double longitude;

  const GeoPoint({
    @required this.latitude,
    @required this.longitude,
  });
}

bool arePointsBetween(GeoPoint checkPoint, GeoPoint centerPoint, double kmStart,
    double kmFinish) {
  var ky = 40000 / 360;
  var kx = math.cos(math.pi * centerPoint.latitude / 180.0) * ky;
  var dx = (centerPoint.longitude - checkPoint.longitude).abs() * kx;
  var dy = (centerPoint.latitude - checkPoint.latitude).abs() * ky;
  return math.sqrt(dx * dx + dy * dy) >= kmStart &&
      math.sqrt(dx * dx + dy * dy) <= kmFinish;
}
