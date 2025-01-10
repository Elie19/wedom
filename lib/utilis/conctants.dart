import 'package:flutter/material.dart';

// App-wide constants
class AppConstants {
  // Colors
  static const Color primaryColor = Colors.blue;
  static const Color secondaryColor = Colors.white;
  static const Color accentColor = Colors.black;
  static const Color backgroundColor = Color(0xFFF5F5F5);

  // Padding and Margins
  static const double defaultPadding = 16.0;
  static const double smallPadding = 8.0;
  static const double largePadding = 24.0;

  // Font Sizes
  static const double smallFontSize = 12.0;
  static const double mediumFontSize = 16.0;
  static const double largeFontSize = 20.0;

  // Durations
  static const Duration defaultAnimationDuration = Duration(milliseconds: 300);

  // Images
  static const String logoPath = 'assets/images/logo.png';
  static const String placeholderImagePath = 'assets/images/placeholder.png';

  // API Endpoints
  static const String baseApiUrl = 'https://api.example.com';
  static const String userEndpoint = '/users';
  static const String walletEndpoint = '/wallet';

  // Others
  static const double borderRadius = 12.0;
}
