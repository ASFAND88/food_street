import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_street/extensions/padding_extensions.dart';
import 'package:food_street/helpers/constants.dart';
import 'package:sizer/sizer.dart';
import '../../widgets/custom_textfield.dart';
import 'login_screen.dart';

class signUpScreen extends StatefulWidget {
  @override
  State<signUpScreen> createState() => _signUpScreenState();
}

class _signUpScreenState extends State<signUpScreen> {
  @override
  Widget build(BuildContext context) {
    bool isHidden = false;
    IconData suffix = Icons.visibility_outlined;
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: appsColor.whiteColor,
      appBar: AppBar(
        backgroundColor: appsColor.whiteColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: appsColor.blackColor,
            size: 15.sp,
          ),
        ),
      ),
      body: Container(
        height: 100.h,
        width: 100.w,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/backimg.png',),
              alignment: Alignment.bottomRight,
              scale: .7.sp,
            )
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 35.sp),
          child: Column(
            children: [
              Container(
                height: 15.h,
                width: 100.w,
                // color: Colors.red,
                child: Stack(
                  children: [
                    Positioned(
                      top: 1.h,
                      child: Container(
                        height: 70.sp,
                        width: 70.sp,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: appsColor.iconColor,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 4.5.h,
                      left: 7.w,
                      child: Text(
                        'Create a New Account',
                        style: TextStyle(
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 18.sp,
                          color: appsColor.blackColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Create an account so you can see  our latest Racipes',
                      style: TextStyle(
                        fontFamily: 'poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 9.sp,
                        color: appsColor.greyColor,
                      ),
                    ),
                    customTextField(
                      label: 'Name',
                        hinttext: 'ABDUL HANNAN',
                      validator: (value){
                          if(value!.isEmpty){
                            return "please enter the name";
                          }else{
                            return null;
                          }
                      },
                    ),
                    customTextField(
                      label: "Email",
                      hinttext: 'abc@gmail.com',
                      validator: (value){
                        if(value!.isEmpty){
                          return "please enter the name";
                        }else{
                          return null;
                        }
                      },
                    ),

                    customTextField(
                      label: "password",
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please Enter the Password";
                        } else if (value.length < 8) {
                          return "Password should be greater than 8 digits";
                        } else {
                          return null;
                        }
                      },
                      hinttext: '*********',
                      isHidden:isHidden,
                      suffix: suffix,
                      onTab: () {
                        setState(() {
                          isHidden = !isHidden;
                        });
                        isHidden == true
                            ? suffix = Icons.visibility_off_outlined
                            : Icons.visibility_outlined;
                      },
                    ),
                    customTextField(
                      label: "confirm password",
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please Enter the Password";
                        } else if (value.length < 8) {
                          return "Password should be greater than 8 digits";
                        } else {
                          return null;
                        }
                      },
                      hinttext: '*********',
                      isHidden: isHidden,
                      suffix: suffix,
                      onTab: () {
                        setState(() {
                          isHidden = !isHidden;
                        });
                        isHidden == true
                            ? suffix = Icons.visibility_off_outlined
                            : Icons.visibility_outlined;
                      },
                    ),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()));
                        },
                        child: Container(
                          margin: EdgeInsets.only(top: 4.h),
                          padding: EdgeInsets.symmetric(
                              vertical: 7.sp, horizontal: 23.5.w),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(29),
                              color: appsColor.iconColor),
                          child: Text(
                            'SIGNUP',
                            style: TextStyle(
                                fontFamily: 'poppins',
                                fontWeight: FontWeight.w600,
                                fontSize: 12.sp,
                                color: appsColor.blackColor),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 15.sp,
                      ),
                      padding: EdgeInsets.symmetric(vertical: 7.sp),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(29),
                          color: appsColor.iconColor),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/images/google-svgrepo-com 1.svg'),
                          SizedBox(
                            width: 5.sp,
                          ),
                          Text(
                            'signup with Google',
                            style: TextStyle(
                              fontFamily: 'poppins',
                              fontSize: 9.sp,
                              fontWeight: FontWeight.w500,
                              color: appsColor.blackColor,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ).paddingSymmetric(horizontal: 10.sp),
              ),
              SizedBox(
                height: 8.h,
              ),
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account',
                      style: TextStyle(
                        fontFamily: 'poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: 9.sp,
                        color: appsColor.blackColor,
                      ),
                    ),
                    VerticalDivider(
                        thickness: 1, color: appsColor.iconColor),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                      },
                      child: Text(
                        ' LOGIN',
                        style: TextStyle(
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 9.sp,
                          color: appsColor.iconColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}