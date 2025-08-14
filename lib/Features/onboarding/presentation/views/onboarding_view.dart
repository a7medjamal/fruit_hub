import 'package:flutter/material.dart';
import 'package:fruit_hub/Features/onboarding/presentation/widgets/onboarding_view_body.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: const OnboardingViewBody()));
  }
}
