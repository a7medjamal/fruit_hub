import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_router.dart';

void main() {
  runApp(const FruitHubApp());
}

class FruitHubApp extends StatelessWidget {
  const FruitHubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      title: 'Fruit Hub',
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}
