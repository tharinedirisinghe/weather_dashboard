# Personalized Weather Dashboard - Project Report

**Student Name:** Edirisinghe T.S | **Index:** 224049K | **Batch:** 22  
**Course:** L3S1 Wireless | **Platform:** Android (Flutter)  
**GitHub:** https://github.com/tharinedirisinghe/weather_dashboard.git

---

## 1. Index and Coordinate Derivation

**Student Index:** 224049K

**Formula Application:**
```
firstTwo  = 22    (digits 0-1)
nextTwo   = 40    (digits 2-3)

latitude  = 5  + (22 / 10.0) = 7.20°
longitude = 79 + (40 / 10.0) = 83.00°
```

**Computed Coordinates:** Latitude: **7.20°**, Longitude: **83.00°**

---

## 2. API Request Information

**Open-Meteo API URL:**
```
https://api.open-meteo.com/v1/forecast?latitude=7.20&longitude=83.00&current_weather=true
```

**Response Data:** Temperature (°C), Wind Speed (km/h), Weather Code, Timestamp

---

## 3. Application Screenshots

### Screenshot 1: Online Mode - Weather Data with Request URL
[Insert screenshot here showing: Index 224049K, coordinates, weather data, and the complete request URL at the bottom of the screen]

**Key elements visible:**
- Student index: 224049K
- Computed coordinates: Lat 7.20°, Lon 83.00°
- Current temperature, wind speed, and weather code
- Last updated timestamp
- **Request URL displayed at bottom** (as required)

### Screenshot 2: Offline Mode - Cached Data
[Insert screenshot here showing: Airplane mode enabled, "(cached)" badge, and previous weather data]

**Key elements visible:**
- Orange "(cached)" badge indicating offline mode
- Previously fetched weather data still accessible
- Error message (if no cache) or cached data display

---

## 4. Reflection

Through this project, I gained practical experience in mobile app development with Flutter, specifically in REST API integration and local data persistence. I learned how to implement the `http` package for API calls with proper error handling and `shared_preferences` for offline caching, which highlighted the importance of building resilient applications that work in low-connectivity scenarios. The main challenge I faced was resolving Gradle and Java version compatibility issues during the Android build process, which I solved by upgrading Gradle to version 8.3. Additionally, implementing proper state management for loading, error, and success states required careful planning to ensure smooth user experience. This assignment reinforced the value of defensive programming - always planning for network failures - and taught me that good user experience extends beyond just online functionality; cached data ensures users can access information even without internet, which is crucial for real-world mobile applications.

---

**Date:** November 17, 2025 | **Submitted by:** 224049K
