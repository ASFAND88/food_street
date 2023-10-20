import 'package:flutter/material.dart';
import 'package:food_street/extensions/padding_extensions.dart';
import 'package:food_street/helpers/constants.dart';
import 'package:food_street/views/screen/forget_screen.dart';
import 'package:food_street/views/screen/signup_screen.dart';
import 'package:sizer/sizer.dart';
import '../../widgets/custom_textfield.dart';
import '../layouts/bottom_navigation.dart';
import 'login_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    bool isHidden = false;
    IconData suffix = Icons.visibility_outlined;
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: appsColor.whiteColor,
      appBar: AppBar(
        // toolbarHeight: 100,
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
          padding: EdgeInsets.symmetric(horizontal: 15.w),
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
                      top: 4.4.h,
                      left: 7.w,
                      child: Text(
                        'Welcome Back',
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
                    SizedBox(
                      height: 3.sp,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context)=>forgetScreen()));
                        },
                        child: Text('forget password',
                        style: TextStyle(
                        fontFamily: 'poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: 8.sp,
                        color: appsColor.greyColor,
                        ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5.h,),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => bottomNavigationScreen()));
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 7.sp, horizontal: 18.w),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(29),
                              color: appsColor.iconColor),
                          child: Text(
                            'LOGIN',
                            style: TextStyle(
                                fontFamily: 'poppins',
                                fontWeight: FontWeight.w600,
                                fontSize: 12.sp,
                                color: appsColor.blackColor),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
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
                      color: appsColor.iconColor,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => signUpScreen()));
                      },
                      child: Text(
                        ' SIGNUP',
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
              ).paddingOnly(top: 33.h),
            ],
          ),
        ),
      ),
    );
  }
}