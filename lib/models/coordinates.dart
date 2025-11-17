class Coordinates {
  final double latitude;
  final double longitude;

  Coordinates({
    required this.latitude,
    required this.longitude,
  });

  String get latitudeFormatted => latitude.toStringAsFixed(2);
  String get longitudeFormatted => longitude.toStringAsFixed(2);
}
