import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class DashboardPage extends StatelessWidget {
  final List<String> cryptoImages = [
    'assets/crypto1.png',
    'assets/crypto2.png',
    'assets/crypto3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          const Text(
            'Top 10 of best change services',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          CarouselSlider(
            options: CarouselOptions(height: 200, autoPlay: true),
            items: cryptoImages.map((imagePath) {
              return Builder(
                builder: (BuildContext context) {
                  return Image.asset(imagePath, fit: BoxFit.cover);
                },
              );
            }).toList(),
          ),
          const SizedBox(height: 20),
          const Text('Cash exchanges services'),
        ],
      ),
    );
  }
}
