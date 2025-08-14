import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              SizedBox(
                width: double.infinity,
                child: SvgPicture.asset(
                  'assets/images/splash_1.svg',
                  color: Color.fromARGB(255, 244, 231, 209),
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 160,
                left: 50,
                child: SvgPicture.asset('assets/images/first_splash_logo.svg'),
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
                    "Fruit",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.green[900],
                      fontFamily: GoogleFonts.cairo().fontFamily,
                    ),
                  ),
                  Text(
                    "HUB",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.yellow[900],
                      fontFamily: GoogleFonts.cairo().fontFamily,
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
              const SizedBox(height: 24),
              SizedBox(
                width: 301,
                height: 66,
                child: Column(
                  children: [
                    Text(
                      "اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف \nمجموعتنا الواسعة من الفواكه الطازجة الممتازة\n واحصل على أفضل العروض والجودة العالية.",
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
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
