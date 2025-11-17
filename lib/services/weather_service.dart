import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/weather_data.dart';
import '../models/coordinates.dart';

class WeatherService {
  static const String _baseUrl = 'https://api.open-meteo.com/v1/forecast';

  /// Builds the request URL for Open-Meteo API
  static String buildRequestUrl(Coordinates coords) {
    return '$_baseUrl?latitude=${coords.latitudeFormatted}&longitude=${coords.longitudeFormatted}&current_weather=true';
  }

  /// Fetches weather data from Open-Meteo API
  /// Throws exception if the request fails
  static Future<WeatherData> fetchWeather(Coordinates coords) async {
    final url = buildRequestUrl(coords);

    try {
      final response = await http.get(
        Uri.parse(url),
        headers: {'Accept': 'application/json'},
      ).timeout(
        const Duration(seconds: 10),
        onTimeout: () {
          throw Exception(
              'Request timed out. Please check your internet connection.');
        },
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);

        if (data['current_weather'] == null) {
          throw Exception('Invalid response from weather API');
        }

        final currentWeather = data['current_weather'];

        return WeatherData(
          temperature: currentWeather['temperature']?.toDouble() ?? 0.0,
          windSpeed: currentWeather['windspeed']?.toDouble() ?? 0.0,
          weatherCode: currentWeather['weathercode'] ?? 0,
          timestamp: DateTime.now(),
          requestUrl: url,
        );
      } else {
        throw Exception(
            'Failed to load weather data (Status: ${response.statusCode})');
      }
    } catch (e) {
      if (e.toString().contains('SocketException') ||
          e.toString().contains('NetworkException')) {
        throw Exception('No internet connection. Please check your network.');
      }
      rethrow;
    }
  }
}
