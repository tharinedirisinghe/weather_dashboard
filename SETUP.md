# Quick Setup Guide

## Initial Setup

1. **Install Flutter dependencies**
   ```bash
   flutter pub get
   ```

2. **Check Flutter setup**
   ```bash
   flutter doctor
   ```

3. **Connect your Android device or start an emulator**

4. **Run the app**
   ```bash
   flutter run
   ```

## Building APK for Testing

```bash
flutter build apk --release
```

The APK will be located at:
`build/app/outputs/flutter-apk/app-release.apk`

## Testing the App

### Test 1: Basic Functionality
1. Launch the app
2. The default index "194174B" should show:
   - Latitude: 6.90°
   - Longitude: 83.10°
3. Tap "Fetch Weather"
4. Weather data should appear with current temperature, wind speed, and weather code

### Test 2: Custom Index
1. Change the index to your own (e.g., "123456A")
2. Coordinates should update automatically
3. Tap "Fetch Weather" to get weather for new location

### Test 3: Offline Mode
1. Successfully fetch weather once (while online)
2. Enable Airplane Mode on your device
3. Tap "Fetch Weather" again
4. Should show cached data with "(cached)" tag
5. Error message may appear first, but cached data will display

### Test 4: Error Handling
1. Enter invalid index (less than 4 digits or non-numeric)
2. Should show validation error
3. Enable Airplane Mode without prior cache
4. Should show "No internet connection" error

## Capturing Screenshots

### Screenshot 1: Online Mode
1. Make sure you're connected to internet
2. Tap "Fetch Weather"
3. Take screenshot showing temperature, wind speed, weather code, and timestamp
4. Save as `screenshots/online_mode.png`

### Screenshot 2: Offline/Cached Mode
1. After fetching successfully, enable Airplane Mode
2. Tap "Fetch Weather"
3. Take screenshot showing the orange "(cached)" badge
4. Save as `screenshots/offline_mode.png`

### Screenshot 3: Error Handling
1. Enable Airplane Mode with no cache
2. Tap "Fetch Weather"
3. Take screenshot showing the red error message
4. Save as `screenshots/error_handling.png`

## Recording Video Demo (≤60 seconds)

Record the following sequence:
1. **0-10s**: Show the app with student index and computed coordinates
2. **10-25s**: Tap "Fetch Weather" and show the weather data appearing
3. **25-40s**: Show enabling Airplane Mode (swipe down notification panel)
4. **40-55s**: Tap "Fetch Weather" again and show cached data with "(cached)" tag
5. **55-60s**: Show the request URL at bottom of screen

Tips:
- Use Android's built-in screen recorder or ADB
- Keep phone vertical (portrait mode)
- Speak clearly if adding voice narration
- Show each feature briefly but clearly

## Troubleshooting

### Problem: "flutter: command not found"
**Solution:** Install Flutter SDK and add to PATH

### Problem: Gradle build errors
**Solution:** 
```bash
cd android
./gradlew clean
cd ..
flutter clean
flutter pub get
```

### Problem: "Waiting for another flutter command to release the startup lock"
**Solution:**
```bash
taskkill /F /IM dart.exe
flutter pub get
```

### Problem: Internet permission error on Android
**Solution:** Already included in `AndroidManifest.xml` - ensure you're testing on Android API 21+

## Project Checklist

- [x] Index input field (pre-filled)
- [x] Coordinate calculation and display
- [x] Fetch Weather button
- [x] Temperature display
- [x] Wind speed display
- [x] Weather code display
- [x] Last updated timestamp
- [x] Request URL shown on screen
- [x] Loading indicator
- [x] Error handling
- [x] Offline caching
- [x] Cached data indicator
- [ ] Screenshots captured
- [ ] Video demo recorded
- [ ] APK built for submission

## Submission Checklist

1. [ ] Test all functionality
2. [ ] Capture 3 screenshots
3. [ ] Record 60-second video demo
4. [ ] Build release APK
5. [ ] Review README.md
6. [ ] Prepare report document
7. [ ] Submit all files

## Commands Reference

```bash
# Install dependencies
flutter pub get

# Run in debug mode
flutter run

# Run in release mode
flutter run --release

# Build APK
flutter build apk --release

# Clean build
flutter clean

# Check for issues
flutter doctor

# Analyze code
flutter analyze
```

Good luck with your submission! 🚀
