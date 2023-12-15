import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hypnohand_app/core/theme/palette.dart';
import 'package:hypnohand_app/feature/auth/onboarding/onboarding_screen.dart';

import '../../../core/global_variables/global_variables.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.primaryColor,
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => OnBoardingScreen(),
            ),
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "HYPNOHAND",
                style: GoogleFonts.urbanist(
                  fontSize: h * 0.04,
                  color: Palette.whiteColor,
                ),
              ),
            ),
            Text(
              "Where the learning starts...",
              style: GoogleFonts.poppins(
                fontSize: h * 0.017,
                color: Palette.whiteColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
