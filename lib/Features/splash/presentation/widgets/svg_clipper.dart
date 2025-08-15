import 'package:flutter/material.dart';
import 'package:path_drawing/path_drawing.dart';

class SvgClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    const String svgPathData =
        "M245.5 -104.891C245.5 -104.891 143.431 -136.48 50.6385 -74.9613C-42.1543 -13.4427 -82.0489 102.365 -116.916 195.238C-151.783 288.112 -120.047 379.639 -42.3232 418.587C35.4004 457.535 80.9199 393.075 184.937 385.456C288.954 377.838 318.209 391.792 399.894 328.006C481.58 264.22 485.802 121.592 409.105 19.6358C332.408 -82.3208 245.5 -104.891 245.5 -104.891Z";

    Path path = parseSvgPathData(svgPathData);

    final Matrix4 matrix4 = Matrix4.identity();
    matrix4.scale(size.width / 375, size.height / 431);
    return path.transform(matrix4.storage);
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class SvgClip extends StatelessWidget {
  const SvgClip({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipPath(
          clipper: SvgClipper(),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Color.fromARGB(255, 244, 231, 209),
          ),
        ),
      ),
    );
  }
}
