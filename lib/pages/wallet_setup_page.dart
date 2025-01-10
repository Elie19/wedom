import 'package:flutter/material.dart';

class WalletSetupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Best transactions fees'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.person_outline),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Lowest to Highest',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: [
                  TransactionTile(
                    title: 'Yellow Card',
                    subtitle: 'ACHAT',
                    percentage: 67,
                    amount: 'XOF 636',
                    token: 'USDT-BEP20',
                  ),
                  TransactionTile(
                    title: 'Izichange',
                    subtitle: 'ACHAT',
                    percentage: 53,
                    amount: 'XOF 650',
                    token: 'USDT-BEP20',
                  ),
                  TransactionTile(
                    title: 'Digital Cash',
                    subtitle: 'ACHAT',
                    percentage: 50,
                    amount: 'XOF 732',
                    token: 'USDT-BEP20',
                  ),
                  Divider(),
                  TransactionTile(
                    title: 'Digital Cash',
                    subtitle: 'VENTE',
                    percentage: 67,
                    amount: 'XOF 546',
                    token: 'USDT-BEP20',
                  ),
                  TransactionTile(
                    title: 'Izichange',
                    subtitle: 'VENTE',
                    percentage: 53,
                    amount: 'XOF 580',
                    token: 'USDT-BEP20',
                  ),
                  TransactionTile(
                    title: 'Yellow Card',
                    subtitle: 'VENTE',
                    percentage: 50,
                    amount: 'XOF 615',
                    token: 'USDT-BEP20',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.swap_horiz),
            label: 'Transactions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Favorites',
          ),
        ],
        currentIndex: 1,
        selectedItemColor: Colors.blueAccent,
        onTap: (index) {
          // Handle navigation
        },
      ),
    );
  }
}

class TransactionTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final int percentage;
  final String amount;
  final String token;

  const TransactionTile({
    required this.title,
    required this.subtitle,
    required this.percentage,
    required this.amount,
    required this.token,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Text('$percentage%'),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            amount,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            token,
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
      onTap: () {
        // Handle transaction details
      },
    );
  }
}
