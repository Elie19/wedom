import 'package:flutter/material.dart';
import '../widgets/Wallet Setup.dart';

class profilepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: const [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.grey,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Adam Richmond',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            WalletSetup(),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Action pour les suggestions
                  },
                  child: const Text('Suggestions (5)'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Action pour ajouter un portefeuille
                  },
                  child: const Text('My Wallet'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Last Tasks to Do',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            ListTile(
              leading: const Icon(Icons.check_circle_outline),
              title: const Text('Talk with Richard about new JS Framework'),
              subtitle: const Text('Today - 11:45 - 12:45'),
              trailing: const Text(
                'Very Important',
                style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'To Pay (3)',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Wrap(
              spacing: 10,
              children: [
                Chip(label: Text('Office')),
                Chip(label: Text('Cloud')),
                Chip(label: Text('Ghost')),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              'Total: \$99.95',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              'Sales Analytics',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: const [
                      Text('79%', style: TextStyle(fontSize: 20)),
                      Text('Last Year'),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: const [
                      Text('239%', style: TextStyle(fontSize: 20)),
                      Text('5 Years'),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: const [
                      Text('+17%', style: TextStyle(fontSize: 20)),
                      Text('Month to Month'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
