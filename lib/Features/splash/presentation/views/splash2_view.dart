import 'package:flutter/material.dart';
import 'package:fruit_hub/Features/splash/presentation/widgets/splash2_view_body.dart';

class Splash2View extends StatelessWidget {
  const Splash2View({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Splash2ViewBody(),
    )); 
  }
}