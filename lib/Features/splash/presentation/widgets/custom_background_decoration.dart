import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hub/Features/splash/presentation/widgets/svg_clipper.dart';

class CustomBackgroundDecoration extends StatelessWidget {
  const CustomBackgroundDecoration({
    super.key,
    required this.size,
    required this.imagePath,
  });

  final Size size;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: size.height * 0.5,
          child: SvgClip(),
        ),
        Positioned(
          top: size.height * 0.17,
          left: size.width * 0.23,
          right: size.width * 0.23,
          bottom: size.height * 0.5 * 0.04,
          child: SvgPicture.asset(imagePath),
        ),
      ],
    );
  }
}
