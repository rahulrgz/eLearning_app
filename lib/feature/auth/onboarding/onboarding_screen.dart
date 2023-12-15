import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hypnohand_app/feature/auth/login/login_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../core/contants/image_Constands.dart';
import '../../../core/global_variables/global_variables.dart';
import '../../../core/theme/palette.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final controller = PageController();
  bool isLastPage = false;
  int pageIndex = 0;

  final List<Map<String, dynamic>> onBoardingData = [
    {
      'imagePath': Constants.onboard1,
      'text': "Grab all course now on \nyour hands",
      'content':
          "Being able to study efficiently is an\n important skill for students.",
    },
    {
      'imagePath': Constants.onboard2,
      'text': "Monitored by certified\n Teachers.",
      'content':
          "Being able to study efficiently is an\n important skill for students.",
    },
    {
      'imagePath': Constants.onboard3,
      'text': "Let's enroll your favorite \ncourse right now!",
      'content':
          "Being able to study efficiently is an\n important skill for students.",
    },
  ];

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.bgColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: h * 0.6,
              child: PageView(
                physics: const BouncingScrollPhysics(),
                controller: controller,
                onPageChanged: (index) {
                  setState(() {
                    pageIndex = index;
                    isLastPage = index == onBoardingData.length - 1;
                  });
                },
                children: [
                  SizedBox(
                    width: w,
                    child: Column(
                      children: [
                        Image.asset(
                          Constants.onboard1,
                          height: h * 0.4,
                        ),
                        SizedBox(
                          height: h * 0.03,
                        ),
                        Text(
                          'Grab all course now on \nyour hands',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.urbanist(
                            textStyle: TextStyle(
                              fontSize: h * 0.03,
                              color: Palette.primaryColor,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: h * 0.023,
                        ),
                        Text(
                          'Being able to study efficiently is an\n important skill for students.',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.urbanist(
                            textStyle: TextStyle(
                              fontSize: h * 0.017,
                              color: Palette.blackColor,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: w,
                    child: Column(
                      children: [
                        Image.asset(
                          Constants.onboard2,
                          height: h * 0.4,
                        ),
                        SizedBox(
                          height: h * 0.03,
                        ),
                        Text(
                          'Monitored by certified\n Teachers.',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.urbanist(
                            textStyle: TextStyle(
                              fontSize: h * 0.03,
                              color: Palette.primaryColor,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: h * 0.023,
                        ),
                        Text(
                          'Being able to study efficiently is an\n important skill for students.',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.urbanist(
                            textStyle: TextStyle(
                              fontSize: h * 0.017,
                              color: Palette.blackColor,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: w,
                    child: Column(
                      children: [
                        Image.asset(
                          Constants.onboard3,
                          height: h * 0.41,
                        ),
                        SizedBox(
                          height: h * 0.02,
                        ),
                        Text(
                          "Let's enroll your favorite \ncourse right now!",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.urbanist(
                            textStyle: TextStyle(
                              fontSize: h * 0.03,
                              color: Palette.primaryColor,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: h * 0.023,
                        ),
                        Text(
                          'Being able to study efficiently is an\n important skill for students.',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.urbanist(
                            textStyle: TextStyle(
                              fontSize: h * 0.017,
                              color: Palette.blackColor,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: h * 0.02),
            SmoothPageIndicator(
              controller: controller,
              count: onBoardingData.length,
              effect: ExpandingDotsEffect(
                dotWidth: w * 0.025,
                dotHeight: h * 0.01,
                activeDotColor: Palette.primaryColor,
              ),
            ),
            SizedBox(height: h * 0.02),
            pageIndex == onBoardingData.length - 1
                ? GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    },
                    child: Container(
                      width: w * 0.8,
                      height: h * 0.05,
                      decoration: BoxDecoration(
                        color: Palette.mainButton,
                        borderRadius: BorderRadius.circular(h * 0.06),
                      ),
                      child: Center(
                        child: Text(
                          'Get Started',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: w * 0.03,
                          ),
                        ),
                      ),
                    ),
                  )
                : GestureDetector(
                    onTap: () {
                      controller.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut);
                    },
                    child: Container(
                      width: w * 0.8,
                      height: h * 0.05,
                      decoration: BoxDecoration(
                        color: Palette.mainButton,
                        borderRadius: BorderRadius.circular(h * 0.06),
                      ),
                      child: Center(
                        child: Text(
                          'Next',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: w * 0.03,
                          ),
                        ),
                      ),
                    ),
                  ),
            SizedBox(
              height: h * 0.05,
            )
          ],
        ),
      ),
    );
  }
}
