import 'package:flutter/material.dart';
import 'package:fruit_hub/Features/splash/presentation/widgets/custom_dot_indicator.dart';
import 'package:fruit_hub/Features/splash/presentation/widgets/splash1_view_body.dart';
import 'package:fruit_hub/Features/splash/presentation/widgets/splash2_view_body.dart';

class SplashPager extends StatefulWidget {
  const SplashPager({super.key});

  @override
  State<SplashPager> createState() => _SplashPagerState();
}

class _SplashPagerState extends State<SplashPager> {
  final PageController _pageController = PageController();
  double _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page ?? 0;
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            physics: const BouncingScrollPhysics(),
            controller: _pageController,
            children: const [Splash1ViewBody(), Splash2ViewBody()],
          ),
          Positioned(
            left: 172,
            right: 172,
            bottom: 125,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                2,
                (index) => CustomDotIndicator(
                  isActive: index == _currentPage.round(),
                  activeColor: Colors.green[900]!,
                  inactiveColor: index == 0
                      ? Colors.green[900]!
                      : Colors.green[500]!,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
