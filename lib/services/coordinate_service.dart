import '../models/coordinates.dart';

class CoordinateService {
  /// Derives latitude and longitude from student index
  /// Format: firstTwo = int(index[0..1]), nextTwo = int(index[2..3])
  /// lat = 5 + (firstTwo / 10.0)  // Range: 5.0 to 15.9
  /// lon = 79 + (nextTwo / 10.0)  // Range: 79.0 to 89.9
  static Coordinates deriveCoordinates(String index) {
    if (index.length < 4) {
      throw ArgumentError('Index must be at least 4 characters long');
    }

    // Extract first two digits
    final firstTwo = int.parse(index.substring(0, 2));
    // Extract next two digits
    final nextTwo = int.parse(index.substring(2, 4));

    // Calculate coordinates
    final latitude = 5.0 + (firstTwo / 10.0);
    final longitude = 79.0 + (nextTwo / 10.0);

    return Coordinates(
      latitude: latitude,
      longitude: longitude,
    );
  }

  /// Validates if the index string is valid
  static bool isValidIndex(String index) {
    if (index.length < 4) return false;

    try {
      // Try to parse first 4 characters as numbers
      int.parse(index.substring(0, 2));
      int.parse(index.substring(2, 4));
      return true;
    } catch (e) {
      return false;
    }
  }
}
