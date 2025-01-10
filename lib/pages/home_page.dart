import 'package:flutter/material.dart';
import '../routes.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Profile Page'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.profile);
            },
          ),
          ListTile(
            title: Text('Wallet Setup Page'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.walletSetup);
            },
          ),
          ListTile(
            title: Text('Details Page'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.details);
            },
          ),
        ],
      ),
    );
  }
}
