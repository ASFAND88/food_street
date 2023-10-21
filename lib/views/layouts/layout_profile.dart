import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_street/extensions/padding_extensions.dart';
import 'package:food_street/helpers/constants.dart';
import 'package:food_street/helpers/constants.dart';
import 'package:food_street/widgets/custom_textfield.dart';
import 'package:sizer/sizer.dart';
class LayoutProfile extends StatelessWidget{
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
            size: 13.sp,
          ),
        ),
        centerTitle: true,
        title: Text('Profile',
          style: TextStyle(
            fontFamily: 'poppins',
            fontWeight: FontWeight.w500,
            fontSize: 10.sp,
            color: appsColor.blackColor,
          ),),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 18.h,
            left: 16.h,
            child: Container(
              height: 100.sp,
              width: 100.sp,
              child: CircleAvatar(
                radius: 6.w,
                backgroundImage: AssetImage('assets/images/drawer.png'),
              ),
            ),
          ),
          Positioned(
            top: 2.h,
            child: Container(
              height: 600.sp,
              width: 300.sp,
              child: Column(
                children: [
                  Text('ABDUL HANNAN',
                    style:TextStyle(
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 13.sp,
                      color: appsColor.blackColor,
                    ),
                  ),
                  Text('abc@gmail.com',
                    style:TextStyle(
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 9.sp,
                      color: appsColor.textColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 25.h,
            left: 8.h,
            child: Container(
              height: 220.sp,
              width: 200.sp,
              child: Column(
                children: [
                  customTextField(hinttext: 'ABDUL HANNAN',
                  label: 'Name',
                    Iconyn: true,
                  ).paddingOnly(top: 10.h),
                  customTextField(hinttext: 'abc@gmail.com',
                  label: 'Email',
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 65.h,
            left: 15.5.h,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10.sp,horizontal: 12.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(37),
                color: appsColor.blackColor
              ),
              child: Text('UPDATE',
              style: TextStyle(
                fontFamily: 'poppins',
                fontSize: 8.sp,
                fontWeight: FontWeight.w700,
                color: appsColor.iconColor,
              ),
              ),
            ),
          ),
        ],
      )
    );
  }

}