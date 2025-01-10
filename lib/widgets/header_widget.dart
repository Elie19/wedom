import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final double borderRadius;
  final TextStyle textStyle;

  const CustomButton({
    required this.text,
    required this.onPressed,
    this.color = Colors.blue,
    this.borderRadius = 8.0,
    this.textStyle = const TextStyle(
      color: Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      ),
      child: Text(
        text,
        style: textStyle,
      ),
    );
  }
}

class CarouselWidget extends StatelessWidget {
  final List<Widget> items;
  final double height;
  final PageController pageController;
  final ValueChanged<int>? onPageChanged;

  const CarouselWidget({
    required this.items,
    this.height = 200.0,
    required this.pageController,
    this.onPageChanged,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: PageView.builder(
        controller: pageController,
        itemCount: items.length,
        onPageChanged: onPageChanged,
        itemBuilder: (context, index) {
          return items[index];
        },
      ),
    );
  }
}

class AnalyticsChart extends StatelessWidget {
  final List<FlSpot> data;
  final String title;
  final Color lineColor;

  const AnalyticsChart({
    required this.data,
    required this.title,
    this.lineColor = Colors.blue,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        SizedBox(
          height: 200,
          child: LineChart(
            LineChartData(
              gridData: FlGridData(show: false),
              titlesData: FlTitlesData(
                leftTitles: SideTitles(showTitles: true),
                bottomTitles: SideTitles(showTitles: true),
              ),
              borderData: FlBorderData(show: true),
              lineBarsData: [
                LineChartBarData(
                  spots: data,
                  isCurved: true,
                  colors: [lineColor],
                  barWidth: 3,
                  isStrokeCapRound: true,
                  dotData: FlDotData(show: false),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class HeaderWidget extends StatelessWidget {
  final String title;
  final bool showBackButton;
  final List<Widget>? actions;

  const HeaderWidget({
    required this.title,
    this.showBackButton = true,
    this.actions,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: showBackButton
          ? IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () => Navigator.of(context).pop(),
      )
          : null,
      title: Text(
        title,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: actions,
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      elevation: 0,
    );
  }
}
