# Personalized Weather Dashboard - Project Report

**Student Name:** [Your Name]  
**Index Number:** 224049K  
**Batch:** 22  
**Course:** L3S1 Wireless - Take-Home Assignment  
**Platform:** Android (Flutter)  
**GitHub Repository:** https://github.com/tharinedirisinghe/weather_dashboard.git

---

## 1. Index and Coordinate Derivation

### Student Index
```
224049K
```

### Derivation Formula
The coordinates are derived from the first four digits of the student index using the following formula:

```
firstTwo  = int(index[0..1])  = 22
nextTwo   = int(index[2..3])  = 40

latitude  = 5  + (firstTwo / 10.0) = 5 + 2.2  = 7.20°
longitude = 79 + (nextTwo  / 10.0) = 79 + 4.0 = 83.00°
```

### Computed Coordinates
- **Latitude:** 7.20°
- **Longitude:** 83.00°

These coordinates place the location in Sri Lanka, which is within the valid range:
- Latitude: 5.0° to 15.9°
- Longitude: 79.0° to 89.9°

---

## 2. API Request Information

### Open-Meteo API Endpoint
```
https://api.open-meteo.com/v1/forecast?latitude=7.20&longitude=83.00&current_weather=true
```

### Response Data Displayed
- **Temperature:** Current temperature in °C
- **Wind Speed:** Current wind speed in km/h
- **Weather Code:** WMO weather code (raw number)
- **Last Updated:** Timestamp from device clock

---

## 3. Application Screenshots

### Screenshot 1: Online Mode - Weather Data Fetched Successfully
![Online Mode](screenshots/online_mode.png)

*The screenshot shows:*
- Student index: 224049K
- Computed coordinates: Lat 7.20°, Lon 83.00°
- Current weather data with temperature, wind speed, and weather code
- Last updated timestamp
- **Request URL visible at the bottom:** `https://api.open-meteo.com/v1/forecast?latitude=7.20&longitude=83.00&current_weather=true`

### Screenshot 2: Offline Mode - Cached Data
![Offline Mode](screenshots/offline_mode.png)

*The screenshot demonstrates:*
- Airplane Mode enabled on the emulator
- Cached weather data displayed with orange "(cached)" badge
- Same weather information from previous successful fetch
- Error message indicating no internet connection
- Request URL still visible

### Screenshot 3: Error Handling
![Error Handling](screenshots/error_handling.png)

*The screenshot shows:*
- Network error message in red card
- User-friendly error text
- Graceful fallback to cached data (if available)

---

## 4. Key Features Implemented

✅ **Index-based Coordinate Derivation**
- Automatic calculation from student index
- Real-time validation and display

✅ **Weather API Integration**
- HTTP GET request to Open-Meteo API
- JSON parsing of weather data
- 10-second timeout handling

✅ **Offline Caching**
- Uses `shared_preferences` for local storage
- Displays cached data when offline
- Visual indicator with "(cached)" badge

✅ **Error Handling**
- Network error detection
- Timeout handling
- User-friendly error messages
- Graceful degradation to cached data

✅ **Clean UI Design**
- Material Design 3 components
- Card-based layout for clarity
- Loading indicators during API calls
- Color-coded status messages

✅ **Transparency**
- Request URL displayed on screen
- Timestamp for last update
- Clear labeling of all data fields

---

## 5. Technical Implementation

### Dependencies Used
```yaml
http: ^1.1.0              # For REST API calls
shared_preferences: ^2.2.2 # For local caching
intl: ^0.19.0             # For date formatting
```

### Project Structure
```
lib/
├── main.dart                      # Main UI and app logic
├── models/
│   ├── coordinates.dart           # Coordinate data model
│   └── weather_data.dart          # Weather data model with JSON
└── services/
    ├── coordinate_service.dart    # Coordinate derivation
    ├── weather_service.dart       # API service
    └── cache_service.dart         # Local storage
```

---

## 6. Reflection (Learning Experience)

### What I Learned

Through this project, I gained hands-on experience with several key concepts in mobile application development. **First**, I learned how to integrate REST APIs in Flutter, including proper error handling and timeout management with the `http` package. **Second**, I implemented local data persistence using `shared_preferences`, which taught me the importance of offline functionality in mobile apps - users should always see something useful even without internet connectivity. **Third**, I deepened my understanding of asynchronous programming in Dart using `async/await` patterns, which is crucial for smooth UI interactions during network operations.

### Challenges Faced and Solutions

The main challenge I encountered was **managing the Gradle build system and Java version compatibility**. Initially, the project failed to build due to a mismatch between Java 21 and Gradle 7.6.3. I resolved this by upgrading to Gradle 8.3, which supports newer Java versions. Another issue was **ensuring proper project structure** - Flutter requires specific naming conventions (lowercase with underscores), which led me to restructure the project folder. Additionally, implementing **proper state management** for loading, error, and success states required careful thought to ensure the UI remained responsive and informative at all times.

### Key Takeaways

This assignment emphasized the importance of **defensive programming** - always assume network requests can fail and plan accordingly. The requirement to show the request URL on screen was particularly valuable for debugging and transparency. I also learned that **user experience extends beyond online functionality** - the cached data feature ensures users can still access information even in poor network conditions, which is critical for real-world applications. Overall, this project bridged theoretical knowledge of REST APIs with practical implementation challenges in mobile development.

---

## 7. Testing Results

| Test Case | Status | Notes |
|-----------|--------|-------|
| Index → Coordinates calculation | ✅ Pass | 224049K → Lat: 7.20°, Lon: 83.00° |
| API call & JSON parsing | ✅ Pass | Successfully fetches and displays weather data |
| Loading indicator | ✅ Pass | Shows spinner during API call |
| Error handling | ✅ Pass | Displays friendly error messages |
| Offline caching | ✅ Pass | Saves last successful result |
| Cached data display | ✅ Pass | Shows "(cached)" badge when offline |
| Request URL visibility | ✅ Pass | URL displayed at bottom of screen |
| Timestamp update | ✅ Pass | Updates on each successful fetch |

---

## 8. Conclusion

The Personalized Weather Dashboard successfully meets all functional requirements specified in the assignment. The application correctly derives geographical coordinates from the student index, fetches real-time weather data from Open-Meteo API, handles errors gracefully, and provides offline functionality through local caching. The clean UI design and comprehensive error handling ensure a positive user experience in both online and offline scenarios.

**GitHub Repository:** https://github.com/tharinedirisinghe/weather_dashboard.git

---

**Date:** November 17, 2025  
**Submitted By:** 224049K
