import 'package:flutter/material.dart';
import 'package:fruit_hub/Features/splash/presentation/widgets/custom_background_decoration.dart';
import 'package:fruit_hub/Features/splash/presentation/widgets/custom_dots_indicator.dart';
import 'package:fruit_hub/Features/splash/presentation/widgets/custom_elevated_button.dart';
import 'package:fruit_hub/Features/splash/presentation/widgets/splash_text_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class Splash2ViewBody extends StatelessWidget {
  final double currentPage;
  const Splash2ViewBody({super.key, required this.currentPage});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CustomBackgroundDecoration(
          size: size,
          imagePath: 'assets/images/second_splash_logo.svg',
        ),
        const SizedBox(height: 64),
        Text(
          "ابحث وتسوق",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: Colors.black87,
            fontFamily: GoogleFonts.cairo().fontFamily,
          ),
        ),
        const SizedBox(height: 24),
        SplashText(
          text:
              "نقدم لك أفضل الفواكه المختارة بعناية. اطلع على\n التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة\n المثالية",
        ),
        const SizedBox(height: 30),
        CustomDotsIndicator(
          currentPage: currentPage,
          activeColor: Colors.green[900]!,
          color: Colors.green[900]!,
        ),
        const SizedBox(height: 29),
        CustomElevatedButton(
          text: 'ابدأ الان',
          onPressed: () {},
          backgroundColor: Colors.green[900],
        ),
      ],
    );
  }
}
