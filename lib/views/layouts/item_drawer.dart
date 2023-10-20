import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_street/extensions/padding_extensions.dart';
import 'package:food_street/views/screen/setting_Screen.dart';
import 'package:sizer/sizer.dart';
import 'package:food_street/helpers/constants.dart';

class ItemDrawer extends StatefulWidget {

   ItemDrawer({
    super.key,
  });

  @override
  State<ItemDrawer> createState() => _ItemDrawerState();
}

class _ItemDrawerState extends State<ItemDrawer> {
  bool switchValue=false;

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      height: 200.sp,
      width: 200.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 13.h, left: 5.w),
                decoration: BoxDecoration(
                    border: Border.all(color: appsColor.greyColor),
                    borderRadius: BorderRadius.circular(40)),
                child: CircleAvatar(
                  radius: 10.w,
                  backgroundImage: AssetImage('assets/images/drawer.png'),
                ),
              ),
              Text(
                'Chef Mode',
                style: TextStyle(
                  fontFamily: 'poppins',
                  fontSize: 8.sp,
                  fontWeight: FontWeight.w600,
                  color: appsColor.blackColor,
                ),
              ).paddingOnly(top: 13.h, left: 7.w),
              Switch(
                activeColor: appsColor.iconColor,
                value: switchValue,
                onChanged:(bool value){
                  setState(() {
                    switchValue=value;
                  });
                },
              ).paddingOnly(top: 13.h,left: 7.w),
            ],
          ),
          Text(
            'ABDUL HANNAN',
            style: TextStyle(
              fontFamily: 'poppins',
              fontSize: 10.sp,
              fontWeight: FontWeight.w500,
              color: appsColor.blackColor,
            ),
          ).paddingOnly(left: 7.w, top: 2.h),
          Text(
            'abc@gmail.com',
            style: TextStyle(
              fontFamily: 'poppins',
              fontSize: 6.sp,
              fontWeight: FontWeight.w400,
              color: appsColor.greyColor,
            ),
          ).paddingOnly(left: 7.w),
          Divider(
            thickness: 1,
          ),
          SizedBox(
            height: 2.h,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SettingScreen()));
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: appsColor.whiteColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SvgPicture.asset('assets/images/setting.svg')
                      .paddingOnly(left: 2.w),
                  Text(
                    'Setting',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 8.sp,
                      fontFamily: 'poppins',
                      color: appsColor.blackColor,
                    ),
                  ).paddingOnly(left: 2.w),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: appsColor.iconColor,
                    size: 8,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: appsColor.whiteColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SvgPicture.asset('assets/images/logout.svg')
                    .paddingOnly(left: 2.w),
                Text(
                  'Setting',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 8.sp,
                    fontFamily: 'poppins',
                    color: appsColor.blackColor,
                  ),
                ).paddingOnly(left: 2.w),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios,
                  color: appsColor.iconColor,
                  size: 8,
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
