import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fruit_hub/core/utils/app_router.dart';

void main() {
  runApp(const FruitHubApp());
}

class FruitHubApp extends StatelessWidget {
  const FruitHubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('en'), Locale('ar')],

      locale: const Locale('ar'),
      routerConfig: AppRouter.router,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
    );
  }
}
