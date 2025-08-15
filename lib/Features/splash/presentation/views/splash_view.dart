import 'package:flutter/material.dart';
import 'package:fruit_hub/Features/splash/presentation/widgets/splash_pager.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: const SplashPager()));
  }
}
