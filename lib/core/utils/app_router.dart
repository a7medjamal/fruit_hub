import 'package:fruit_hub/Features/onboarding/presentation/views/onboarding_view.dart';
import 'package:fruit_hub/Features/splash/presentation/views/splash2_view.dart';
import 'package:fruit_hub/Features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final String kOnboardingView = '/splash';
  static final String kSplashView = '/onboarding';
  static final String kSplash2View = '/onboarding2';
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const OnboardingView()),
      GoRoute(path: kSplashView, builder: (context, state) => const SplashView()),
      GoRoute(path: kSplash2View, builder: (context, state) => const Splash2View()),
    ],
  );
}
