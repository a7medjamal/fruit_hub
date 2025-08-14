import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_hub/core/utils/app_router.dart';
import 'package:go_router/go_router.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  double _size = 0;
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      setState(() {
        _size = 180;
      });
    });
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) GoRouter.of(context).pushReplacement(AppRouter.kSplashView);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedContainer(
        duration: const Duration(seconds: 1),
        curve: Curves.easeOut,
        width: _size,
        height: _size,
        child: SvgPicture.asset('assets/images/fruit_hub_logo.svg'),
      ),
    );
  }
}
