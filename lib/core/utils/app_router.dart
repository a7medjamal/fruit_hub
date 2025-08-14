import 'package:fruit_hub/Features/onboarding/presentation/views/onboarding_view.dart';
import 'package:fruit_hub/Features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final String kSplashView = '/splash';
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const OnboardingView()),
      GoRoute(path: kSplashView, builder: (context, state) => const SplashView()),
    ],
  );
}
