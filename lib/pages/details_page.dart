import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart'; // Library for charts

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Services rate'),
        backgroundColor: Colors.blueAccent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Service ratings
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildServiceCard('Yellow Card', 'assets/icons/yellow_card.png', 4),
                _buildServiceCard('Izichange', 'assets/icons/izichange.png', 5),
                _buildServiceCard('Digital Cash', 'assets/icons/digital_cash.png', 3),
              ],
            ),
            SizedBox(height: 20),

            // Reliability Chart
            Text(
              'Reliability',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 200,
              child: LineChart(
                LineChartData(
                  lineBarsData: [
                    LineChartBarData(
                      spots: [
                        FlSpot(0, 2),
                        FlSpot(1, 2.5),
                        FlSpot(2, 3),
                        FlSpot(3, 3.5),
                        FlSpot(4, 3.2),
                      ],
                      isCurved: true,
                      color: Colors.yellow,
                      barWidth: 3,
                    ),
                    LineChartBarData(
                      spots: [
                        FlSpot(0, 1.5),
                        FlSpot(1, 2),
                        FlSpot(2, 2.2),
                        FlSpot(3, 2.8),
                        FlSpot(4, 3),
                      ],
                      isCurved: true,
                      color: Colors.brown,
                      barWidth: 3,
                    ),
                  ],
                  titlesData: FlTitlesData(show: false),
                  borderData: FlBorderData(show: false),
                ),
              ),
            ),

            SizedBox(height: 20),

            // Usage Rate
            Text(
              'Usage rate',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Column(
              children: [
                _buildUsageBar('Traders', 0.7, Colors.blue),
                _buildUsageBar('Sellers', 0.5, Colors.green),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildServiceCard(String title, String iconPath, int rating) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(iconPath),
        ),
        SizedBox(height: 5),
        Text(
          title,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(
            5,
                (index) => Icon(
              Icons.star,
              size: 16,
              color: index < rating ? Colors.amber : Colors.grey,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildUsageBar(String label, double value, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          SizedBox(width: 80, child: Text(label)),
          Expanded(
            child: LinearProgressIndicator(
              value: value,
              color: color,
              backgroundColor: Colors.grey.shade300,
            ),
          ),
          SizedBox(width: 10),
          Text('${(value * 100).toInt()}%'),
        ],
      ),
    );
  }
}
