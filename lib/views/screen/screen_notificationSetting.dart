import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_street/extensions/padding_extensions.dart';
import 'package:food_street/helpers/constants.dart';
import 'package:sizer/sizer.dart';
class screenNotificationSetting extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: Text('Setting',
          style: TextStyle(
            fontFamily: 'poppins',
            fontWeight: FontWeight.w500,
            fontSize: 10.sp,
            color: appsColor.blackColor,
          ),),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: appsColor.whiteColor,
        ),
        child: Material(
          borderRadius: BorderRadius.circular(12),
          elevation: 3,
          child: Row(
            children: [
              Text('New Recipe update',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 10.sp,
                  fontFamily: 'poppins',
                  color: appsColor.blackColor,
                ),
              ).paddingOnly(left: 2.w),
              Spacer(),
              SvgPicture.asset('assets/images/switch3.svg'),
            ],
          ),
        ),
      ).paddingSymmetric(horizontal: 15.w).paddingOnly(top: 2.h),
    );
  }

}