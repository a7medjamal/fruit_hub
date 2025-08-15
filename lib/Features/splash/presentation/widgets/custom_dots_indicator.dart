import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class CustomDotsIndicator extends StatelessWidget {
  const CustomDotsIndicator({
    super.key,
    required this.currentPage,
    required this.activeColor,
    required this.color,
  });

  final double currentPage;
  final Color activeColor;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: 2,
      position: currentPage,
      decorator: DotsDecorator(
        activeColor: activeColor,
        color: color,
        size: const Size(12, 12),
        activeSize: const Size(12, 12),
        spacing: const EdgeInsets.symmetric(horizontal: 4),
      ),
    );
  }
}
