import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_street/extensions/padding_extensions.dart';
import 'package:food_street/helpers/constants.dart';
import 'package:sizer/sizer.dart';
class forgetScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
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
        centerTitle: true,
        title: Text('Forget Password',
        style: TextStyle(
          fontFamily: 'poppins',
          fontWeight: FontWeight.w500,
          fontSize: 10.sp,
          color: appsColor.blackColor,
        ),),
      ),
      body: Column(
        children: [
          Image.asset('assets/images/forgetimg.png').paddingOnly(top: 3.h),
          Text('Select email should we use to reset\npassword',
            style: TextStyle(
              fontFamily: 'poppins',
              fontWeight: FontWeight.w500,
              fontSize: 10.sp,
              color: appsColor.greyColor,
            ),).paddingOnly(top: 5.h),
          TextFormField(
            decoration: InputDecoration(
              hintText: "abc@gmail.com",
              hintStyle: TextStyle(fontSize: 10.sp,
                  fontWeight: FontWeight.w500,
                  fontFamily: "poppins",
                  color: appsColor.blackColor),
              suffixIcon: SvgPicture.asset('assets/images/switch1.svg').paddingAll(5.w),
              contentPadding: EdgeInsets.symmetric(horizontal: 10.sp, vertical: 8.sp),
              enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: appsColor.whiteColor),
          borderRadius: BorderRadius.circular(8),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: appsColor.whiteColor),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: appsColor.whiteColor),
          borderRadius: BorderRadius.circular(8),
        ),
            ),
          ).paddingOnly(top: 5.h),
          Container(
            padding: EdgeInsets.symmetric(
                vertical: 7.sp, horizontal: 18.w),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(29),
                color: appsColor.iconColor),
            child: Text(
              'Send',
              style: TextStyle(
                  fontFamily: 'poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 12.sp,
                  color: appsColor.blackColor),
            ),
          ).paddingOnly(top: 8.h),
        ],
      ).paddingSymmetric(horizontal: 15.w),
    );
  }

}