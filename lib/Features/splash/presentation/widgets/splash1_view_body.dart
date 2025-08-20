import 'package:flutter/material.dart';
import 'package:fruit_hub/Features/splash/presentation/widgets/custom_background_decoration.dart';
import 'package:fruit_hub/Features/splash/presentation/widgets/splash_text_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class Splash1ViewBody extends StatelessWidget {
  const Splash1ViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CustomBackgroundDecoration(
          size: size,
          imagePath: 'assets/images/first_splash_logo.svg',
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
        SplashText(
          text:
              "اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف \nمجموعتنا الواسعة من الفواكه الطازجة الممتازة\n واحصل على أفضل العروض والجودة العالية.",
        ),
        const SizedBox(height: 40),

      ],
    );
  }
}
