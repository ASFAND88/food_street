import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_street/extensions/padding_extensions.dart';
import 'package:food_street/helpers/constants.dart';
import 'package:sizer/sizer.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: appsColor.whiteColor,
      appBar: AppBar(
        backgroundColor: appsColor.whiteColor,
        elevation: 1,
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
        title: Text(
          'Notifications',
          style: TextStyle(
            fontFamily: 'poppins',
            fontWeight: FontWeight.w500,
            fontSize: 10.sp,
            color: appsColor.blackColor,
          ),
        ),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
                radius: 20.sp,
                backgroundColor: appsColor.iconColor,
                child: Image.asset("assets/images/Ellipse 24.png")),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Chiken Wings Recipe",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: appsColor.iconColor,
                      fontSize: 10.sp,
                      fontFamily: "poppins"),
                ),
                Align(
                  alignment: Alignment.centerRight,
                    child: SvgPicture.asset('assets/images/icondot.svg').paddingOnly(right: 5.sp)
                ),
                Text.rich(
                  TextSpan(
                      text: "uploaded by",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 10.sp,
                          fontFamily: "poppins",
                          color: appsColor.textColor),
                      children: [
                        TextSpan(
                          text: "James Jone\t\t\t\t\t",
                          style: TextStyle(color: appsColor.blackColor),
                        ),
                        TextSpan(
                            text: '\t\t\t\t\t2 min ago',
                            style: TextStyle(
                              fontFamily: 'poppins',
                              fontSize: 5.sp,
                              fontWeight: FontWeight.w400,
                              color: appsColor.textColor,
                            )),
                      ]),
                ),
                SizedBox(height: 2.h,),
              ],
            ).paddingOnly(top: 2.h),
          );
        },
      ),
    );
  }
}
