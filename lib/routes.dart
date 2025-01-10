import 'package:flutter/material.dart';
import 'pages/landing_page.dart';
import 'pages/dashboard_page.dart';
import 'pages/profile_page.dart';
import 'pages/wallet_setup_page.dart';
import 'pages/details_page.dart';

class AppRoutes {
  static const String landing = '/';
  static const String home = '/home';
  static const String profile = '/profile';
  static const String walletSetup = '/wallet-setup';
  static const String details = '/details';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case landing:
        return MaterialPageRoute(builder: (_) => LandingPage());
      case home:
        return MaterialPageRoute(builder: (_) => DashboardPage());
      case profile:
        return MaterialPageRoute(builder: (_) => ProfilePage());
      case walletSetup:
        return MaterialPageRoute(builder: (_) => WalletSetupPage());
      case details:
        return MaterialPageRoute(builder: (_) => DetailsPage());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('Page not found: ${settings.name}'),
            ),
          ),
        );
    }
  }
}
