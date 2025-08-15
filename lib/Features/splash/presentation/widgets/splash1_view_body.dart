import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hub/Features/splash/presentation/widgets/svg_clipper.dart';
import 'package:google_fonts/google_fonts.dart';

class Splash1ViewBody extends StatelessWidget {
  final double currentPage;
  const Splash1ViewBody({super.key, required this.currentPage});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Stack(
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
              child: SvgPicture.asset('assets/images/first_splash_logo.svg'),
            ),
          ],
        ),
        const SizedBox(height: 60),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text.rich(
              TextSpan(
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  fontFamily: GoogleFonts.cairo().fontFamily,
                ),
                children: [
                  TextSpan(
                    text: "Fruit",
                    style: TextStyle(color: Colors.green[900]),
                  ),
                  TextSpan(
                    text: "HUB",
                    style: TextStyle(color: Colors.yellow[900]),
                  ),
                ],
              ),
            ),
            Text(
              " مرحبًا بك في",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Colors.black87,
                fontFamily: GoogleFonts.cairo().fontFamily,
              ),
            ),
          ],
        ),
        SizedBox(height: size.height * 0.05),
        SizedBox(
          width: 301,
          height: 66,
          child: Text(
            "اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف \nمجموعتنا الواسعة من الفواكه الطازجة الممتازة\n واحصل على أفضل العروض والجودة العالية.",
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
        ),
        const SizedBox(height: 40),
        DotsIndicator(
          dotsCount: 2,
          position: currentPage,
          decorator: DotsDecorator(
            activeColor: Colors.green[900],
            color: Colors.green[500]!,
            size: const Size(12, 12),
            activeSize: const Size(12, 12),
            spacing: const EdgeInsets.symmetric(horizontal: 4),
          ),
        ),
      ],
    );
  }
}
