# Personalized Weather Dashboard

A Flutter-based Android application that displays personalized weather information based on your student index number. The app derives geographical coordinates from your student index and fetches real-time weather data from the Open-Meteo API.

## 📱 Features

- **Index-based Coordinates**: Automatically derives latitude and longitude from your student index
- **Real-time Weather Data**: Fetches current weather information including temperature, wind speed, and weather code
- **Offline Cache**: Stores the last successful weather data locally for offline access
- **Error Handling**: User-friendly error messages with graceful fallback to cached data
- **Clean UI**: Intuitive Material Design 3 interface with clear information display
- **Request Transparency**: Shows the exact API request URL for verification

## 🎯 Requirements Met

### Functional Requirements
✅ Text input for student index (pre-filled with example)  
✅ Display computed latitude/longitude (2 decimal places)  
✅ "Fetch Weather" button with API call  
✅ Shows Temperature (°C), Wind speed, and Weather code  
✅ Displays last updated timestamp  
✅ Shows exact request URL on screen  
✅ Loading indicator during fetch  
✅ Friendly error messages on failure  
✅ Caches last successful result using `shared_preferences`  
✅ Shows "(cached)" tag when displaying offline data  

## 📐 Coordinate Derivation Formula

The app uses the following formula to derive coordinates from your student index:

```
Given index: 194174B

firstTwo  = int(index[0..1])  = 19
nextTwo   = int(index[2..3])  = 41

latitude  = 5  + (firstTwo / 10.0) = 5 + 1.9  = 6.90°
longitude = 79 + (nextTwo  / 10.0) = 79 + 4.1 = 83.10°
```

**Range:**
- Latitude: 5.0° to 15.9°
- Longitude: 79.0° to 89.9°

## 🌐 API Information

**API Used:** Open-Meteo (No API key required)

**Endpoint:**
```
https://api.open-meteo.com/v1/forecast?latitude={LAT}&longitude={LON}&current_weather=true
```

**Response includes:**
- Temperature (°C)
- Wind speed (km/h)
- Weather code (WMO code)

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (3.0.0 or higher)
- Android Studio / VS Code with Flutter extensions
- Android device or emulator

### Installation

1. **Clone or extract the project**
   ```bash
   cd "c:\myFolder\uni\L3S1\wireless\assignment project"
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   flutter run
   ```

### Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  http: ^1.1.0                    # For API calls
  shared_preferences: ^2.2.2       # For local caching
  intl: ^0.18.1                    # For date formatting
```

## 📖 Usage

1. **Enter Your Index**: The app comes pre-filled with "194174B" - replace it with your student index
2. **View Coordinates**: Computed latitude and longitude appear automatically
3. **Fetch Weather**: Tap the "Fetch Weather" button to get current weather data
4. **View Results**: Temperature, wind speed, weather code, and update time are displayed
5. **Offline Mode**: Turn on Airplane Mode and tap "Fetch Weather" to see cached data with a "(cached)" tag

## 🏗️ Project Structure

```
lib/
├── main.dart                      # Main app entry and UI
├── models/
│   ├── coordinates.dart           # Coordinate data model
│   └── weather_data.dart          # Weather data model
└── services/
    ├── coordinate_service.dart    # Coordinate derivation logic
    ├── weather_service.dart       # API service for Open-Meteo
    └── cache_service.dart         # Local storage service
```

## 📸 Screenshots

### Online Mode
![Weather Dashboard - Online](screenshots/online_mode.png)
*Showing live weather data with temperature, wind speed, and weather code*

### Offline Mode (Cached)
![Weather Dashboard - Offline](screenshots/offline_mode.png)
*Displaying cached data when network is unavailable*

### Error Handling
![Weather Dashboard - Error](screenshots/error_handling.png)
*User-friendly error message with fallback to cached data*

## 🎥 Video Demo

A 60-second video demonstration is available showing:
- Entering student index and viewing computed coordinates
- Fetching weather data online
- Enabling Airplane Mode and viewing cached data
- Error handling demonstration

[Link to video demo]

## 🧪 Testing Scenarios

### Test 1: Normal Operation
1. Enter student index
2. Tap "Fetch Weather"
3. Verify temperature, wind speed, and weather code appear
4. Check timestamp updates

### Test 2: Coordinate Calculation
1. Enter index "194174B"
2. Verify latitude = 6.90°
3. Verify longitude = 83.10°

### Test 3: Offline Caching
1. Fetch weather successfully (online)
2. Enable Airplane Mode
3. Tap "Fetch Weather"
4. Verify cached data appears with "(cached)" tag

### Test 4: Error Handling
1. Enable Airplane Mode (no cache)
2. Tap "Fetch Weather"
3. Verify friendly error message appears

## 🔧 Technical Implementation

### Coordinate Derivation
The `CoordinateService` class extracts the first four digits from the student index and applies the formula to calculate latitude and longitude.

### Weather Fetching
The `WeatherService` makes HTTP GET requests to Open-Meteo API with a 10-second timeout and proper error handling for network issues.

### Caching Strategy
The `CacheService` uses `shared_preferences` to store the last successful weather data as JSON, allowing the app to function offline.

### UI Components
- Material Design 3 with Cards and elevation
- Loading indicators during API calls
- Color-coded error messages
- Cached data indicator with visual badge
- Selectable request URL for verification

## 📋 Marking Checklist

- [x] Correct index→coords & shown in UI
- [x] Working API call & JSON parsing
- [x] Loading, error handling, and offline cache
- [x] Clean UI (labels, layout, readability)
- [x] Report (clear + screenshots + URL)
- [x] Video demo (≤60s, shows online + cached)

## 🛠️ Troubleshooting

### Issue: Dependencies not found
**Solution:** Run `flutter pub get` in the project directory

### Issue: Build errors
**Solution:** Run `flutter clean` then `flutter pub get`

### Issue: API timeout
**Solution:** Check internet connection and try again

### Issue: Cached data not showing
**Solution:** Ensure you've successfully fetched weather at least once while online

## 👨‍💻 Author

**Student Index:** 194174B  
**Course:** L3S1 Wireless  
**Platform:** Android (Flutter)

## 📄 License

This project is created for academic purposes.

---

**Note:** This application uses Open-Meteo API which is free and requires no API key. The derived coordinates place you somewhere in the South Asian region based on your student index.
