import 'package:flutter/material.dart';
import 'package:food_street/helpers/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_street/views/screen/signup_screen.dart';
import 'package:sizer/sizer.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int? pageIndex;

  PageController _controller = PageController(initialPage: 0);

  List<String> images = [
    'assets/images/pic1.png',
    'assets/images/pic2.png',
    'assets/images/pic3.png',
  ];

  List<String> titleText = [
    'Get all the healthy recipes that you need',
    'Get the exact nutrition value of everything you eat',
    'Get daily calorie target based on your body weight',
  ];

  List<String> subTitleText = [
    'Whether you are losing or gaining. we have all the recipes you’ll need.',
    'We are updating our food database every minute to help you track your calories',
    "Set your target weight and select your monthly schedule, and we’ill do the rest",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appsColor.whiteColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: appsColor.whiteColor,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15.sp, horizontal: 10.sp),
            child: pageIndex == 2
                ? null
                : GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => signUpScreen(),
                    ));
              },
              child: Text(
                "Skip",
                style: TextStyle(color: appsColor.greyColor),
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            child: PageView.builder(
              controller: _controller,
              onPageChanged: (index) {
                setState(() {
                  pageIndex = index;
                });
              },
              itemCount: images.length,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.sp),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 40.h,
                      width: 40.h,
                      child: Image.asset(images[index]),
                    ),
                    Column(
                      children: [
                        Text(
                          titleText[index],
                          style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 15.sp,
                        ),
                        Text(
                          subTitleText[index],
                          style: TextStyle(fontSize: 11.sp, color: appsColor.greyColor),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            pageIndex == 2
                                ? Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => signUpScreen(),
                                ))
                                : _controller.nextPage(
                              duration: Duration(milliseconds: 100),
                              curve: Curves.bounceIn,
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: appsColor.iconColor,
                              // shape: BoxShape.circle
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: pageIndex == 2 ? 40.sp : 9.sp,
                                vertical: 9.sp,
                              ),
                              child: pageIndex == 2
                                  ? Text(
                                "Get Started",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                                  : Icon(Icons.arrow_forward),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            bottom: 0,
            right: 42.w,
            child: Row(
              children: List.generate(images.length,
                    (index) =>buildIndicator(index,context),

              ),
            ),
          ),
        ],
      ),
    );
  }
  Container buildIndicator(int index,BuildContext context){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.sp),
      height: 6.5.sp,
      width: pageIndex==index?18.sp:6.5.sp,
      decoration: BoxDecoration(
        color: pageIndex==index?appsColor.iconColor:Colors.transparent,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: appsColor.iconColor),
      ),
    );
  }
}