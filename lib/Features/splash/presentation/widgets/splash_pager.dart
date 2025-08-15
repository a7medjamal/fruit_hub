import 'package:flutter/material.dart';
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
      body: PageView(
        controller: _pageController,
        children: [
          Splash1ViewBody(currentPage: _currentPage),
          Splash2ViewBody(currentPage: _currentPage),
        ],
      ),
    );
  }
}
