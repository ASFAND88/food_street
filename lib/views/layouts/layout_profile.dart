import 'package:flutter/material.dart';
import 'package:food_street/helpers/constants.dart';
import 'package:food_street/helpers/constants.dart';
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
    );
  }

}