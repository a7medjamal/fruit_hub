import 'package:flutter/material.dart';

void main() {
  runApp(const FruitHubApp());
}

class FruitHubApp extends StatelessWidget {
  const FruitHubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Fruit Hub',
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}
