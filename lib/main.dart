import 'package:flutter/material.dart';
import 'package:hypnohand_app/core/global_variables/global_variables.dart';
import 'package:hypnohand_app/feature/auth/onboarding/onboarding_screen.dart';
import 'package:hypnohand_app/feature/auth/splash/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return const MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
