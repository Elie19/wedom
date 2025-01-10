import 'package:flutter/material.dart';

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
        backgroundColor: color,
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
