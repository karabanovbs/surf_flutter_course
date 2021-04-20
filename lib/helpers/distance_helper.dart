import 'dart:math' as math;

class GeoPoint {
  final double latitude;
  final double longitude;

  const GeoPoint({
    required this.latitude,
    required this.longitude,
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

double degreesToRadians(double degrees) {
  return degrees * math.pi / 180;
}

double distanceInKmBetweenEarthCoordinates(GeoPoint point1, GeoPoint point2) {
  var earthRadiusKm = 6371;

  var dLat = degreesToRadians(point2.latitude - point1.latitude);
  var dLon = degreesToRadians(point2.longitude - point1.longitude);

  var a = math.sin(dLat / 2) * math.sin(dLat / 2) +
      math.sin(dLon / 2) *
          math.sin(dLon / 2) *
          math.cos(degreesToRadians(point1.latitude)) *
          math.cos(degreesToRadians(point2.latitude));
  var c = 2 * math.atan2(math.sqrt(a), math.sqrt(1 - a));
  return earthRadiusKm * c;
}
