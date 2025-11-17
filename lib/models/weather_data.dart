class WeatherData {
  final double temperature;
  final double windSpeed;
  final int weatherCode;
  final DateTime timestamp;
  final String requestUrl;
  final bool isCached;

  WeatherData({
    required this.temperature,
    required this.windSpeed,
    required this.weatherCode,
    required this.timestamp,
    required this.requestUrl,
    this.isCached = false,
  });

  Map<String, dynamic> toJson() {
    return {
      'temperature': temperature,
      'windSpeed': windSpeed,
      'weatherCode': weatherCode,
      'timestamp': timestamp.toIso8601String(),
      'requestUrl': requestUrl,
    };
  }

  factory WeatherData.fromJson(Map<String, dynamic> json) {
    return WeatherData(
      temperature: json['temperature']?.toDouble() ?? 0.0,
      windSpeed: json['windSpeed']?.toDouble() ?? 0.0,
      weatherCode: json['weatherCode'] ?? 0,
      timestamp: DateTime.parse(json['timestamp']),
      requestUrl: json['requestUrl'] ?? '',
    );
  }

  WeatherData copyWith({bool? isCached}) {
    return WeatherData(
      temperature: temperature,
      windSpeed: windSpeed,
      weatherCode: weatherCode,
      timestamp: timestamp,
      requestUrl: requestUrl,
      isCached: isCached ?? this.isCached,
    );
  }
}
