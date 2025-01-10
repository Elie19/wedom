import 'package:flutter/material.dart';
import 'routes.dart';
import 'utilis/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WeDOM',
      debugShowCheckedModeBanner: false,
      theme: AppThemes.lightTheme, // Thème clair
      darkTheme: AppThemes.darkTheme, // Thème sombre
      themeMode: ThemeMode.system, // Basculer automatiquement selon le système
      initialRoute: AppRoutes.landing, // Route initiale
      onGenerateRoute: AppRoutes.generateRoute, // Gestionnaire de routes
    );
  }
}
