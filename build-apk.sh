#!/usr/bin/env bash
# ========================================================
# Script for building the Android APK for Arabic Journey
# Requirements: Node.js 18+, JDK 17+, Android SDK
# ========================================================

set -e

echo "📦 1/3: Building Web Production Bundle..."
npm run build

echo "🔄 2/3: Syncing Capacitor Android Assets..."
npx cap sync android

echo "🔨 3/3: Assembling Android Debug APK via Gradle..."
cd android
chmod +x gradlew
./gradlew assembleDebug

echo ""
echo "🎉 ===================================================="
echo "✅ APK successfully generated!"
echo "📁 Location: android/app/build/outputs/apk/debug/app-debug.apk"
echo "📲 You can now copy this APK to your Android device and install it."
echo "========================================================"
