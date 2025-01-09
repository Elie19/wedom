import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Picture
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/profile_picture.png'),
              ),
            ),
            SizedBox(height: 20),
            // Profile Name
            Center(
              child: Text(
                'Adam Richmond',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            // Suggestions Button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Handle Suggestions
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text('Suggestions (5)'),
              ),
            ),
            SizedBox(height: 20),
            // Wallet Section
            Text(
              'My Wallet',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Card(
              child: ListTile(
                leading: Icon(Icons.account_balance_wallet),
                title: Text('Add Wallet'),
                trailing: Icon(Icons.add),
                onTap: () {
                  // Handle Wallet Addition
                },
              ),
            ),
            SizedBox(height: 20),
            // Last Tasks Section
            Text(
              'Last Tasks to Do',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              title: Text('Talk with Richard about new JS Framework'),
              subtitle: Text('Today - 11:45 - 12:45'),
              trailing: Icon(Icons.important_devices),
            ),
            SizedBox(height: 20),
            // To Pay Section
            Text(
              'To Pay (3)',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Chip(label: Text('GNote')),
                Chip(label: Text('Office')),
                Chip(label: Text('FCloud')),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Total: \$99.95',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            // Charts Section
            Text(
              'Sales',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Card(
                    child: Container(
                      height: 100,
                      child: Center(
                        child: Text('15% Growth'),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    child: Container(
                      height: 100,
                      child: Center(
                        child: Text('+5% Last Quarter'),
                      ),
                    ),
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
