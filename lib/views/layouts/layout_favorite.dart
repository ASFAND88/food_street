import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_street/extensions/padding_extensions.dart';
import 'package:food_street/helpers/constants.dart';
import 'package:sizer/sizer.dart';

class LayoutFavorite extends StatefulWidget {
  @override
  State<LayoutFavorite> createState() => _LayoutFavoriteState();
}

class _LayoutFavoriteState extends State<LayoutFavorite> {
  double rating=4.5;

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
        title: Text('Favourite Recipe',
          style: TextStyle(
            fontFamily: 'poppins',
            fontWeight: FontWeight.w500,
            fontSize: 10.sp,
            color: appsColor.blackColor,
          ),),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Desserts',
                  style: TextStyle(
                    fontFamily: 'poppins',
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                    color: appsColor.blackColor,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.arrow_back_ios,
                  color: appsColor.greyColor,
                  size: 12.sp,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: appsColor.iconColor,
                  size: 12.sp,
                ),
              ],
            ).paddingOnly(top: 1.h),
            Container(
              height: 170.sp,
              width: 300.sp,
              child: GridView.builder(
                physics: ScrollPhysics(),
                itemCount: 2,
                  scrollDirection: Axis.vertical,
                  padding: EdgeInsets.all(10),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 23.h,
                    crossAxisCount: 2,
                    mainAxisSpacing: 15.sp,
                    crossAxisSpacing: 15.sp,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: appsColor.greyColor,
                        image: DecorationImage(
                          image: AssetImage('assets/images/skwimg.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Container(
                        height: 50.h,
                        width: 100.h,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                appsColor.whiteColor.withOpacity(0),
                                appsColor.blackColor.withOpacity(1),
                              ]),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CircleAvatar(
                              radius:13,
                              backgroundColor: appsColor.blackColor.withOpacity(0.3),
                              child: SvgPicture.asset('assets/images/heart.svg',height: 3.w,),
                            ).paddingOnly(bottom: 10.8.h,left: 15.3.h),
                            Text(
                              'Crispy Beef Burger',
                              style: TextStyle(
                                fontFamily: 'poppins',
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w600,
                                color: appsColor.whiteColor,
                              ),
                            ),
                            Text(
                              'by Jhon Jones',
                              style: TextStyle(
                                fontFamily: 'poppins',
                                fontSize: 8.sp,
                                fontWeight: FontWeight.w400,
                                color: appsColor.greyColor,
                              ),
                            ),
                            RatingStars(
                              value: rating,
                              onValueChanged: (value) {
                                setState(() {
                                  rating = value;
                                });
                              },
                              starSize: 11.sp,
                              valueLabelVisibility: false,
                            ),
                          ],
                        ).paddingOnly(left: 10.sp, bottom: 10.sp),
                      ),
                    );
                  },
              ),
            ),
            Divider(thickness: 1,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'BBQ',
                  style: TextStyle(
                    fontFamily: 'poppins',
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                    color: appsColor.blackColor,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.arrow_back_ios,
                  color: appsColor.greyColor,
                  size: 12.sp,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: appsColor.iconColor,
                  size: 12.sp,
                ),
              ],
            ).paddingOnly(top: 1.h),
            Container(
              height: 170.sp,
              width: 300.sp,
              child: GridView.builder(
                physics: ScrollPhysics(),
                itemCount: 2,
                  scrollDirection: Axis.vertical,
                  padding: EdgeInsets.all(10),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 23.h,
                    crossAxisCount: 2,
                    mainAxisSpacing: 15.sp,
                    crossAxisSpacing: 15.sp,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: appsColor.greyColor,
                        image: DecorationImage(
                          image: AssetImage('assets/images/skwimg.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Container(
                        height: 50.h,
                        width: 100.h,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                appsColor.whiteColor.withOpacity(0),
                                appsColor.blackColor.withOpacity(1),
                              ]),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CircleAvatar(
                              radius:13,
                              backgroundColor: appsColor.blackColor.withOpacity(0.3),
                              child: SvgPicture.asset('assets/images/heart.svg',height: 3.w,),
                            ).paddingOnly(bottom: 10.8.h,left: 15.3.h),
                            Text(
                              'Crispy Beef Burger',
                              style: TextStyle(
                                fontFamily: 'poppins',
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w600,
                                color: appsColor.whiteColor,
                              ),
                            ),
                            Text(
                              'by Jhon Jones',
                              style: TextStyle(
                                fontFamily: 'poppins',
                                fontSize: 8.sp,
                                fontWeight: FontWeight.w400,
                                color: appsColor.greyColor,
                              ),
                            ),
                            RatingStars(
                              value: rating,
                              onValueChanged: (value) {
                                setState(() {
                                  rating = value;
                                });
                              },
                              starSize: 11.sp,
                              valueLabelVisibility: false,
                            ),
                          ],
                        ).paddingOnly(left: 10.sp, bottom: 10.sp),
                      ),
                    );
                  },
              ),
            ),
            Divider(thickness: 1,),
          ],
        ).paddingSymmetric(horizontal: 10.sp),
      ),
    );
  }
}