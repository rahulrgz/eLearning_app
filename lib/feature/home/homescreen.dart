import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../core/global_variables/global_variables.dart';
import '../../core/theme/palette.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  final imageList = [
    ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Image.network(
        "https://imgs.search.brave.com/DoG4v_nLzdM4di8cXXAezYoZj8DOAaKrNljRKh3oGkQ/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9jYW1w/YWlnbnNvZnRoZXdv/cmxkLmNvbS93cC1j/b250ZW50L3VwbG9h/ZHMvMjAyMC8xMi9C/ZXN0LUVkdWNhdGlv/bmFsLUFkcy5qcGVn",
        fit: BoxFit.cover,
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Image.network(
        "https://imgs.search.brave.com/VGZ7Mb7Yfhg5L9kbh97k68bVaYPZqSYMUfkQCIuRSKw/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9tbGxq/Mmo4eHZmbDAuaS5v/cHRpbW9sZS5jb20v/Y2I6akM3ZS4zNzEw/OS93OjE5MDAvaDox/MDc4L3E6OTAvZjpi/ZXN0L2h0dHBzOi8v/dGhlbWVpc2xlLmNv/bS9ibG9nL3dwLWNv/bnRlbnQvdXBsb2Fk/cy8yMDIxLzEyL21v/bmRseS5qcGc",
        fit: BoxFit.cover,
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Image.network(
        "https://imgs.search.brave.com/hrFZ1iAPZAuZVzR21FV1lNR7N-2VxEpCTRJbUqpd4MI/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9lbnRl/cnByaXNlLmFmZmxl/LmNvbS9ibG9nL3dw/LWNvbnRlbnQvdXBs/b2Fkcy8yMDIwLzAz/L011bHRpbGluZ3Vh/bC5wbmc",
        fit: BoxFit.cover,
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Image.network(
        "https://imgs.search.brave.com/gCHHFN8dDish2mxFbfEH2LIh2vmuCzhBgjwUonZ3ezc/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9zbWFy/dHlhZHMuY29tL3N0/b3JhZ2UvdXBsb2Fk/cy92ZXJ0aWNhbC12/cy1ob3Jpem9udGFs/LWFkLXN0cmF0ZWd5/LnBuZw",
        fit: BoxFit.cover,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.fromLTRB(w * 0.05, 0, w * 0.05, 0),
          child: Column(
            children: [
              SizedBox(height: h * 0.06),
              Align(
                alignment: Alignment.topLeft,
                child: RichText(
                  text: TextSpan(
                    text: 'Hello ',
                    style: TextStyle(
                        fontSize: h * 0.024,
                        color: Palette.primaryColor,
                        fontWeight: FontWeight.w200),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'RAHUL,',
                        style: TextStyle(
                            fontSize: h * 0.024,
                            color: Palette.primaryColor,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Now let's start exploring",
                  style: TextStyle(
                      fontSize: h * 0.02,
                      color: Palette.primaryColor,
                      fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(height: h * 0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: w * 0.1,
                    width: w * 0.63,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Palette.primaryColor, width: w * 0.002),
                          borderRadius: BorderRadius.circular(w * 0.1),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Palette.primaryColor, width: w * 0.002),
                          borderRadius: BorderRadius.circular(w * 0.1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Palette.primaryColor, width: w * 0.002),
                          borderRadius: BorderRadius.circular(w * 0.1),
                        ),
                        hintText: "Search here",
                        hintStyle: TextStyle(
                            fontSize: h * 0.016,
                            color: Palette.primaryColor,
                            fontWeight: FontWeight.w200),
                      ),
                    ),
                  ),
                  CircleAvatar(radius: w * 0.05),
                  CircleAvatar(radius: w * 0.05),
                ],
              ),
              SizedBox(height: h * 0.03),
              // Align(
              //   alignment: Alignment.topLeft,
              //   child: RichText(
              //     text: TextSpan(
              //       text: 'Hello ',
              //       style: TextStyle(
              //           fontSize: h * 0.024,
              //           color: Palette.primaryColor,
              //           fontWeight: FontWeight.w200),
              //       children: <TextSpan>[
              //         TextSpan(
              //           text: 'RAHUL,',
              //           style: TextStyle(
              //               fontSize: h * 0.024,
              //               color: Palette.primaryColor,
              //               fontWeight: FontWeight.w500),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              // Align(
              //   alignment: Alignment.topLeft,
              //   child: Text(
              //     "Now let's start exploring",
              //     style: TextStyle(
              //         fontSize: h * 0.02,
              //         color: Palette.primaryColor,
              //         fontWeight: FontWeight.w300),
              //   ),
              // ),
              SizedBox(height: h * 0.03),
              SizedBox(
                width: w,
                child: CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    height: h * 0.24,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    autoPlayAnimationDuration: Duration(milliseconds: 300),
                    autoPlayInterval: Duration(seconds: 2),
                    enlargeCenterPage: true,
                    aspectRatio: 4,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  ),
                  items: imageList,
                ),
              ),
              SizedBox(height: h * 0.01),
              AnimatedSmoothIndicator(
                activeIndex: currentIndex,
                count: imageList.length,
                effect: WormEffect(
                    dotHeight: w * 0.02,
                    dotWidth: w * 0.02,
                    spacing: 10,
                    dotColor: CupertinoColors.systemGrey,
                    activeDotColor: Palette.primaryColor,
                    paintStyle: PaintingStyle.fill),
              ),
              SizedBox(height: h * 0.02),
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: h * 0.036,
                      width: w * 0.15,
                      decoration: BoxDecoration(
                        color: Palette.primaryColor,
                        borderRadius:
                            BorderRadiusDirectional.circular(w * 0.024),
                      ),
                      child: Center(
                        child: Text(
                          "All",
                          style: GoogleFonts.poppins(
                            fontSize: h * 0.016,
                            fontWeight: FontWeight.w500,
                            color: Palette.whiteColor,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: w * 0.02),
                    Container(
                      height: h * 0.036,
                      width: w * 0.25,
                      decoration: BoxDecoration(
                        color: Palette.secondaryColor,
                        borderRadius:
                            BorderRadiusDirectional.circular(w * 0.024),
                      ),
                      child: Center(
                        child: Text(
                          "Business",
                          style: GoogleFonts.poppins(
                            fontSize: h * 0.016,
                            fontWeight: FontWeight.w500,
                            color: Palette.primaryColor,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: w * 0.02),
                    Container(
                      height: h * 0.036,
                      width: w * 0.2,
                      decoration: BoxDecoration(
                        color: Palette.secondaryColor,
                        borderRadius:
                            BorderRadiusDirectional.circular(w * 0.024),
                      ),
                      child: Center(
                        child: Text(
                          "Design",
                          style: GoogleFonts.poppins(
                            fontSize: h * 0.016,
                            fontWeight: FontWeight.w500,
                            color: Palette.primaryColor,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: w * 0.02),
                    Container(
                      height: h * 0.036,
                      width: w * 0.33,
                      decoration: BoxDecoration(
                        color: Palette.secondaryColor,
                        borderRadius:
                            BorderRadiusDirectional.circular(w * 0.024),
                      ),
                      child: Center(
                        child: Text(
                          "Development",
                          style: GoogleFonts.poppins(
                            fontSize: h * 0.016,
                            fontWeight: FontWeight.w500,
                            color: Palette.primaryColor,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: w * 0.02),
                    Container(
                      height: h * 0.036,
                      width: w * 0.33,
                      decoration: BoxDecoration(
                        color: Palette.secondaryColor,
                        borderRadius:
                            BorderRadiusDirectional.circular(w * 0.024),
                      ),
                      child: Center(
                        child: Text(
                          "Programming",
                          style: GoogleFonts.poppins(
                            fontSize: h * 0.016,
                            fontWeight: FontWeight.w500,
                            color: Palette.primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
