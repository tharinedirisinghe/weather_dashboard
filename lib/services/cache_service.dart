import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/weather_data.dart';

class CacheService {
  static const String _cacheKey = 'last_weather_data';

  /// Saves weather data to local cache
  static Future<void> cacheWeatherData(WeatherData data) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final jsonString = json.encode(data.toJson());
      await prefs.setString(_cacheKey, jsonString);
    } catch (e) {
      // Silently fail if caching doesn't work
      print('Failed to cache data: $e');
    }
  }

  /// Retrieves cached weather data
  /// Returns null if no cached data exists
  static Future<WeatherData?> getCachedWeatherData() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final jsonString = prefs.getString(_cacheKey);

      if (jsonString == null) {
        return null;
      }

      final jsonData = json.decode(jsonString);
      return WeatherData.fromJson(jsonData).copyWith(isCached: true);
    } catch (e) {
      print('Failed to retrieve cached data: $e');
      return null;
    }
  }

  /// Clears all cached data
  static Future<void> clearCache() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove(_cacheKey);
    } catch (e) {
      print('Failed to clear cache: $e');
    }
  }
}
