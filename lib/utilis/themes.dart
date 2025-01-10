import 'package:flutter/material.dart';

class AppThemes {
  static final ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.light(
      primary: Colors.blue,
      secondary: Colors.blueAccent,
      background: Colors.white, // Couleur de fond globale
    ),
    scaffoldBackgroundColor: Colors.white, // Couleur de fond des pages
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white, // Couleur de l'AppBar
      foregroundColor: Colors.black,
      elevation: 0,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    colorScheme: ColorScheme.dark(
      primary: Colors.grey[900]!,
      secondary: Colors.blueAccent,
      background: Colors.black,
    ),
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.grey[900],
      foregroundColor: Colors.white,
      elevation: 0,
    ),
  );
}
