import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hypnohand_app/core/contants/image_Constands.dart';
import 'package:hypnohand_app/core/global_variables/global_variables.dart';
import 'package:hypnohand_app/core/theme/palette.dart';
import 'package:hypnohand_app/feature/home/bottomnav.dart';
import 'package:hypnohand_app/feature/home/homescreen.dart';
import 'package:lottie/lottie.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Palette.bgColor,
        // appBar: AppBar(
        //   elevation: 0,
        //   backgroundColor: Palette.bgColor,
        //   automaticallyImplyLeading: false,
        //   centerTitle: true,
        //   title: Text(
        //     "Login Page",
        //     style: GoogleFonts.poppins(
        //       color: Palette.primaryColor,
        //       fontSize: w * 0.045,
        //     ),
        //   ),
        // ),
        body: Padding(
          padding: EdgeInsets.only(left: w * 0.05, right: w * 0.05),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: h * 0.02),
                SizedBox(
                  height: h * 0.05,
                  child: Center(
                    child: Text(
                      "Login Page",
                      style: GoogleFonts.poppins(
                        color: Palette.primaryColor,
                        fontSize: w * 0.045,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Lottie.asset(Constants.login, height: h * 0.4),
                ),
                Text(
                  'Sign in',
                  style: GoogleFonts.urbanist(
                      color: Palette.primaryColor,
                      fontSize: w * 0.07,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Sign in to get started quickly',
                  style: TextStyle(
                      color: Palette.primaryColor, fontSize: w * 0.03),
                ),
                SizedBox(height: h * 0.02),
                SizedBox(
                  height: h * 0.06,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(w * 0.02),
                        borderSide: BorderSide(
                            width: w * 0.001, color: Palette.primaryColor),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(w * 0.02),
                        borderSide: BorderSide(
                            width: w * 0.001, color: Palette.primaryColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(w * 0.02),
                        borderSide: BorderSide(
                            width: w * 0.001, color: Palette.primaryColor),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(w * 0.02),
                        borderSide: BorderSide(
                            width: w * 0.001, color: Palette.primaryColor),
                      ),
                      hintText: "Enter email",
                      hintStyle: TextStyle(
                          fontSize: h * 0.016,
                          color: Palette.primaryColor,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
                SizedBox(height: h * 0.02),
                SizedBox(
                  height: h * 0.06,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(w * 0.02),
                        borderSide: BorderSide(
                            width: w * 0.001, color: Palette.primaryColor),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(w * 0.02),
                        borderSide: BorderSide(
                            width: w * 0.001, color: Palette.primaryColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(w * 0.02),
                        borderSide: BorderSide(
                            width: w * 0.001, color: Palette.primaryColor),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(w * 0.02),
                        borderSide: BorderSide(
                            width: w * 0.001, color: Palette.primaryColor),
                      ),
                      hintText: "Enter password",
                      hintStyle: TextStyle(
                          fontSize: h * 0.016,
                          color: Palette.primaryColor,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.03,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BottomNav(),
                      ),
                    );
                  },
                  child: Container(
                    width: w,
                    height: h * 0.06,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(w * 0.02),
                      color: Palette.primaryColor,
                    ),
                    child: Center(
                      child: Text(
                        "Login",
                        style: GoogleFonts.urbanist(
                            fontSize: w * 0.04, color: Palette.whiteColor),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: h * 0.01),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'By clicking, I accept the Terms & Conditions & Privacy Policy',
                    style: TextStyle(
                        fontSize: w * 0.027, color: Palette.primaryColor),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, h * 0.01, 0, h * 0.01),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "OR",
                      style: TextStyle(
                          fontSize: w * 0.036, color: Palette.primaryColor),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BottomNav(),
                      ),
                    );
                  },
                  child: Container(
                    width: w,
                    height: h * 0.06,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(w * 0.02),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(width: h * 0.01),
                        Image.asset(
                          Constants.google,
                          height: w * 0.06,
                        ),
                        Text(
                          "Continue with Google",
                          style: TextStyle(
                              fontSize: w * 0.036, color: Palette.primaryColor),
                        ),
                        SizedBox(width: w * 0.033),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: w * 0.025),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
