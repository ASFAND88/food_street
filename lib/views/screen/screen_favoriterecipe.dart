import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:food_street/extensions/padding_extensions.dart';
import 'package:food_street/helpers/constants.dart';
import 'package:sizer/sizer.dart';
import 'package:timelines/timelines.dart';

class favoriteRecipeScreen extends StatefulWidget {
  @override
  State<favoriteRecipeScreen> createState() => _favoriteRecipeScreenState();
}

class _favoriteRecipeScreenState extends State<favoriteRecipeScreen> {
  int qty = 1;
  double rating = 4.5;
  List<String>food = [
    'Mince(beef)',
    'Ginger',
    'EGG',
    'EGG',
    'EGG',
    'EGG',
    'EGG',
    'EGG',
  ];
  List<String>text = [
    '1 Piece',
    '1 Piece',
    '1 Piece',
    '1 Piece',
    '1 Piece',
    '1 Piece',
    '1 Piece',
    '1 Piece',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: appsColor.blackColor,
        body: Stack(
          children: [CustomScrollView(
            slivers: [
              SliverAppBar(
                toolbarHeight: 10.h,
                expandedHeight: 40.h,
                leadingWidth: 20.w,
                automaticallyImplyLeading: false,
                centerTitle: true,
                title: Text('Crispy Beef Burger',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 13.sp,
                    fontFamily: 'poppins',
                    color: appsColor.whiteColor,
                  ),
                ),
                leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios,
                    size: 14.sp,
                    color: appsColor.whiteColor,
                  ),
                ),
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset('assets/images/skwimg.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  height: 80.h,
                  width: 280.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: appsColor.whiteColor,
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 5.sp,
                        width: 20.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: appsColor.iconColor,
                        ),
                      ).paddingOnly(top: 0.8.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Crispy Beef Burger',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15.sp,
                              fontFamily: 'poppins',
                              color: appsColor.iconColor,
                            ),
                          ),
                          Text('Rate the chief',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 8.sp,
                              fontFamily: 'poppins',
                              color: appsColor.blackColor,
                            ),
                          ),
                        ],
                      ).paddingSymmetric(horizontal: 13.sp).paddingOnly(top: 3.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Racipe by Jame Jones',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 6.sp,
                              fontFamily: 'poppins',
                              color: appsColor.greyColor,
                            ),
                          ),
                          RatingStars(
                            value: rating,
                            starColor: appsColor.iconColor,
                            onValueChanged: (value) {
                              setState(() {
                                rating = value;
                              });
                            },
                            starSize: 8.sp,
                            maxValueVisibility: false,
                            valueLabelVisibility: true,
                          ),
                        ],
                      ).paddingSymmetric(horizontal: 13.sp),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Estimated Time',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 8.sp,
                              fontFamily: 'poppins',
                              color: appsColor.blackColor,
                            ),
                          ),
                          Text('30 min',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 8.sp,
                              fontFamily: 'poppins',
                              color: appsColor.greyColor,
                            ),
                          ),
                        ],
                      ).paddingSymmetric(horizontal: 13.sp).paddingOnly(top: 2.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Require Plates',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 8.sp,
                              fontFamily: 'poppins',
                              color: appsColor.blackColor,
                            ),
                          ),
                          Spacer(),
                          Container(
                            width: 20.w,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap:(){
                                    if(qty>1){
                                      setState(() {
                                        qty--;
                                      });
                                    }
                                },
                                  child: Container(
                                    height: 2.5.h,
                                    width: 2.5.h,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          color: appsColor.greyColor.withOpacity(
                                              .2),
                                          width: 2,
                                        ),
                                        color: appsColor.whiteColor,
                                        image: DecorationImage(image: AssetImage(
                                            'assets/images/minus.png'))
                                    ),
                                  ),
                                ),
                                Text(qty.toString()),
                                InkWell(
                                  onTap: (){
                                    setState(() {
                                      qty++;
                                    });
                                  },
                                  child: Container(
                                    height: 2.5.h,
                                    width: 2.5.h,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          color: appsColor.greyColor.withOpacity(
                                              .2),
                                          width: 2,
                                        ),
                                        color: appsColor.whiteColor,
                                        image: DecorationImage(image: AssetImage(
                                            'assets/images/plus.png'))
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ).paddingSymmetric(horizontal: 13.sp).paddingOnly(top: 2.h),
                      Text('INGREDIENTS:',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 10.sp,
                          fontFamily: 'poppins',
                          color: appsColor.iconColor,
                        ),
                      ).paddingOnly(top: 3.h, right: 32.h),
                      Container(
                        height: 50.h,
                        child: Container(
                          alignment: Alignment.topLeft,
                          child: Timeline.tileBuilder(
                              theme: TimelineThemeData(
                                nodePosition:0.03.sp,
                                  indicatorTheme: IndicatorThemeData(
                                    color: appsColor.iconColor,
                                  ),
                                  connectorTheme: ConnectorThemeData(
                                    color: appsColor.iconColor,
                                  )
                              ),
                              physics: ScrollPhysics(),
                              builder: TimelineTileBuilder.fromStyle(
                                  indicatorStyle: IndicatorStyle.dot,
                                  connectorStyle: ConnectorStyle.solidLine,
                                  contentsAlign: ContentsAlign.basic,
                                  contentsBuilder: (context, index) =>
                                      Padding(
                                        padding: EdgeInsets.all(10.sp),
                                        child: Text(food[index],
                                          style: TextStyle(
                                            fontFamily: 'poppins',
                                            fontSize: 9.sp,
                                            fontWeight: FontWeight.w500,
                                            color: appsColor.blackColor,
                                          ),),
                                      ),
                                  itemCount: food.length)),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 13.sp, horizontal: 10.w),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(27),
                          color: appsColor.iconColor,
                        ),
                        child: Text('Complete Details',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 9.sp,
                            fontFamily: 'poppins',
                            color: appsColor.whiteColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),]
        )
    );
  }
}

