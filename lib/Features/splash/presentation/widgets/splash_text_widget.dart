import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashText extends StatelessWidget {
  const SplashText({
    super.key, required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 301,
      height: 66,
      child: Text(
        text,
        maxLines: 3,
        textDirection: TextDirection.rtl,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 13,
          color: const Color(0xff4E5556),
          fontWeight: FontWeight.w600,
          fontFamily: GoogleFonts.cairo().fontFamily,
        ),
      ),
    );
  }
}