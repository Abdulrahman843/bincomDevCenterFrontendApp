# Bincom DevCenter Mobile App
## Overview
The Bincom DevCenter Mobile App is a React Native-based application updated last in 2024 to support seamless interaction and collaboration within the Bincom Global Tech community. In March 2025, the app underwent a comprehensive update to modernize the codebase, fix compatibility issues, and ensure stability with the latest React Native ecosystem.

## Project Status
Last Version: Updated in 2024
Current Version: Updated and restructured in March 2025

## Tech Stack:
1. Mobile Framework: React Native 0.68.2
2. JS Runtime: Node.js v16.20.2
3. Native Modules: Firebase SDk, React-native-gesture-handler
4. Authentication: Firebase Auth
5. UI & Navigation: React Navigation, React Native Paper, Swiper
6. State Management: Redux, Redux Thunk, Redux Persist
7. Android SDK: Target SDK 33+, JDK 11
8. Build Tooling: Gradle, Jetifier, Metro Bundler
9. Language Support: Kotlin (support updated for multiple versions)

## What Was Done in the March 2025 Update
1. Resolved compatibility issues
2. Updated dependencies (Firebase, Gesture Handler, Kotlin stdlib, etc.)
3. Handled Gradle errors and build warnings
4. Built working debug and release APKs
5. Ensured app runs smoothly on emulators and real devices
6. Tested JavaScript bundling and Metro fallback behavior
7. Cleaned project structure and ensured git consistency

## Dependencies Updated in March 2025
1. react-native-gesture-handler from ^2.8.0 to 2.5.0
2. @react-native-firebase/app from ^14.5.1 to ^14.12.0
3. @react-native-firebase/auth from ^14.5.1 to ^14.12.0
4. Kotlin stdlib versions were consolidated and cleaned
5. Deprecated APIs (e.g., RCTEventEmitter warnings) handled during compilation

## Installation & Environment Setup
1. Clone the Repository
 git clone git@gitlab.bincom.net:bincomdevcenter/bincomdevcenterappfrontend.git
 cd bincomdevcenterappfrontend
2. Install Dependencies
a) npm install
b) Ensure Java & Android Setup
i) $env:JAVA_HOME="C:\Program Files\Java\jdk-11"
ii) $env:PATH="$env:JAVA_HOME\bin;$env:PATH"
iii) $env:ORG_GRADLE_JAVA_HOME="C:\Program Files\Java\jdk-11"
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
