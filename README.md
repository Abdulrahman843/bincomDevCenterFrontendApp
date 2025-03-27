# Bincom DevCenter Mobile App
## Overview
The Bincom DevCenter Mobile App is a React Native-based application updated last in 2024 to support seamless interaction and collaboration within the Bincom Global Tech community. In March 2025, the app underwent a comprehensive update to modernize the codebase, fix compatibility issues, and ensure stability with the latest React Native ecosystem.

## Project Status
Last Version: Updated in 2024
Current Version: Updated and restructured in March 2025

## Tech Stack:
### Mobile Framework: React Native 0.68.2
JS Runtime: Node.js v16.20.2
Native Modules: Firebase SDk, React-native-gesture-handler
Authentication: Firebase Auth
UI & Navigation: React Navigation, React Native Paper, Swiper
State Management: Redux, Redux Thunk, Redux Persist
Android SDK: Target SDK 33+, JDK 11
Build Tooling: Gradle, Jetifier, Metro Bundler
Language Support: Kotlin (support updated for multiple versions)

## What Was Done in the March 2025 Update
Resolved compatibility issues
Updated dependencies (Firebase, Gesture Handler, Kotlin stdlib, etc.)
Handled Gradle errors and build warnings
Built working debug and release APKs
Ensured app runs smoothly on emulators and real devices
Tested JavaScript bundling and Metro fallback behavior
Cleaned project structure and ensured git consistency
Dependencies Updated in March 2025
react-native-gesture-handler from ^2.8.0 to 2.5.0
@react-native-firebase/app from ^14.5.1 to ^14.12.0
@react-native-firebase/auth from ^14.5.1 to ^14.12.0
Kotlin stdlib versions were consolidated and cleaned
Deprecated APIs (e.g., RCTEventEmitter warnings) handled during compilation

## Installation & Environment Setup
Clone the Repository
git clone git@gitlab.bincom.net:bincomdevcenter/bincomdevcenterappfrontend.git
cd bincomdevcenterappfrontend
Install Dependencies
npm install
Ensure Java & Android Setup
$env:JAVA_HOME="C:\Program Files\Java\jdk-11"
$env:PATH="$env:JAVA_HOME\bin;$env:PATH"
$env:ORG_GRADLE_JAVA_HOME="C:\Program Files\Java\jdk-11"
Start Metro Bundler (for Debug)
npx react-native start --reset-cache
Run the App on Emulator
npx react-native run-android
Building APKs
Debug APK (requires Metro)
cd android
.\gradlew assembleDebug
Find the APK here:
 android/app/build/outputs/apk/debug/app-debug.apk
Release APK (offline-ready)
cd android
.\gradlew clean
.\gradlew assembleRelease

Find the APK here:
 android/app/build/outputs/apk/release/app-release.apk
This version does not rely on Metro and can run independently.
Version Control Workflow

## To work on updates:
git add .
git commit -m "Updated app for March 2025 release"
git push origin master

## Contributions
This update was executed by Abdulrahman Laoye, a developer on the Bincom Mobile App Team. Focused on refactoring, dependency upgrades, fixing build issues, and improving project maintainability.

## License
This project is proprietary and internal to Bincom Global. Redistribution is not permitted outside of the organization.
