import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesUtils {
  static const _keyUsername = 'username';
  static const _keyPassword = 'password';
  static const _keyIsLoggedIn = '_isloggedIn';

  // Save login data to SharedPreferences.
  static Future<void> saveLoginCredentials(
      String username, String password) async {
    final prefs = await SharedPreferences.getInstance();
    debugPrint('sharedpre email: $username, password: $password');
    await prefs.setString(_keyUsername, username);
    await prefs.setString(_keyPassword, password);
  }

  // Retrieve saved login data from SharedPreferences.
  static Future<Map<String, String>> getLoginCredentials() async {
    final prefs = await SharedPreferences.getInstance();
    final username = prefs.getString(_keyUsername);
    final password = prefs.getString(_keyPassword);

    return {
      'username': username ?? '',
      'password': password ?? '',
    };
  }

  // Method to save the login state (isLogged) to SharedPreferences.
  static Future<void> setLoggedIn(bool isLoggedIn) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_keyIsLoggedIn, isLoggedIn);
  }

  // Method to get the login state (isLogged) from SharedPreferences.
  static Future<bool> getLoggedIn() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_keyIsLoggedIn) ?? false;
  }

  // Clear saved login data from SharedPreferences.
  static Future<void> clearLoginCredentials() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_keyUsername);
    await prefs.remove(_keyPassword);
  }

  static Future<void> clearLogout() async {
    final prefs = await SharedPreferences.getInstance();

    debugPrint(
        'remove login info from sharedpre: ${await prefs.remove(_keyIsLoggedIn)}');
    await prefs.remove(_keyUsername);
    await prefs.remove(_keyPassword);
    await prefs.remove(_keyIsLoggedIn);
  }
}
