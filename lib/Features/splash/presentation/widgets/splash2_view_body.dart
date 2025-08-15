import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hub/Features/splash/presentation/widgets/svg_clipper.dart';
import 'package:fruit_hub/core/utils/app_router.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class Splash2ViewBody extends StatelessWidget {
  const Splash2ViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onHorizontalDragEnd: (details) {
        if (details.primaryVelocity != null && details.primaryVelocity! > 0) {
          context.pushReplacement(AppRouter.kSplashView);
        }
      },
      child: Center(
        child: Column(
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
                  child: SvgPicture.asset(
                    'assets/images/second_splash_logo.svg',
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 60),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "ابحث وتسوق",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Colors.black87,
                        fontFamily: GoogleFonts.cairo().fontFamily,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 64),
                SizedBox(
                  width: 301,
                  height: 66,
                  child: Column(
                    children: [
                      Text(
                        "نقدم لك أفضل الفواكه المختارة بعناية. اطلع على\n التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة\n المثالية",
                        maxLines: 3,
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xff4E5556),
                          fontWeight: FontWeight.w600,
                          fontFamily: GoogleFonts.cairo().fontFamily,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: size.height * 0.05),
            DotsIndicator(
              dotsCount: 2,
              position: 1,
              decorator: DotsDecorator(
                activeColor: Colors.green[900],
                color: Colors.green[900]!,
                size: const Size(12, 12),
                activeSize: const Size(12, 12),
                spacing: const EdgeInsets.symmetric(horizontal: 4),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green[900],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                minimumSize: const Size(343, 50),
              ),
              child: Text(
                "ابدأ الان",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  fontFamily: GoogleFonts.cairo().fontFamily,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
