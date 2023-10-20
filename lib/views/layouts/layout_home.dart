import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_street/extensions/padding_extensions.dart';
import 'package:food_street/helpers/constants.dart';
import 'package:food_street/views/layouts/item_drawer.dart';
import 'package:food_street/views/screen/search_screen.dart';
import 'package:sizer/sizer.dart';
import 'package:chips_choice/chips_choice.dart';
import '../screen/notification_screen.dart';

class LayoutHome extends StatefulWidget {
  @override
  State<LayoutHome> createState() => _LayoutHomeState();
}

class _LayoutHomeState extends State<LayoutHome> {
  int tag = 1;
  double rating=4.5;
  int currentIndex=1;
  PageController _controller = PageController(initialPage: 0);
  List<String> options = [
    'All',
    'BBQ',
    'Deserts',
    'All',
    'BBQ',
    'Deserts',
  ];
  List<String>images=[
    'assets/images/skwimg.png',
    'assets/images/skwimg.png',
    'assets/images/skwimg.png',
    'assets/images/skwimg.png',
    'assets/images/skwimg.png',
  ];
  List<String>food=[
    'Beef Bihari Boti',
    'Beef Bihari Boti',
    'Beef Bihari Boti',
    'Beef Bihari Boti',
    'Beef Bihari Boti',
  ];
  List<String>name=[
    'by Jacob Jones',
    'by Jacob Jones',
    'by Jacob Jones',
    'by Jacob Jones',
    'by Jacob Jones',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: appsColor.whiteColor,
      drawer: ItemDrawer(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 10.h,
            automaticallyImplyLeading: false,
            expandedHeight: 25.h,
            leadingWidth: 20.w,
            backgroundColor: appsColor.blackColor.withOpacity(.9),
            leading: Builder(
              builder: (context) => GestureDetector(
                onTap: (){
                  Scaffold.of(context).openDrawer();
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: appsColor.whiteColor,
                    ),
                  ),
                  child: CircleAvatar(
                    radius: 12.w,
                    backgroundImage: AssetImage('assets/images/home3.png'),
                  ).paddingAll(3),
                ).paddingOnly(left: 15.sp,top: 2.h),
              ),
            ),
            actions: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NotificationScreen()));
                },
                child: SvgPicture.asset(
                  'assets/images/fication.svg',
                  color: appsColor.whiteColor,
                ).paddingOnly(top: 3.h,),
              ),
              Builder(
                builder: (context) => GestureDetector(
                  onTap: (){
                    Scaffold.of(context).openDrawer();
                  },
                  child: SvgPicture.asset(
                    'assets/images/drawer.svg',
                    color: appsColor.whiteColor,
                  ).paddingSymmetric(horizontal: 6.w).paddingOnly(top: 3.h),
                ),
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello, Jhon',
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'poppins',
                      color: appsColor.greyColor,
                    ),
                  ).paddingOnly(top: 18.h, left: 4.w),
                  Text.rich(
                    TextSpan(
                      text: 'Make your own food,\nstay at ',
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'poppins',
                        color: appsColor.whiteColor,
                      ),
                      children: [
                        TextSpan(
                          text: "Home",
                          style: TextStyle(
                            color: appsColor.iconColor,
                          ),
                        ),
                      ],
                    ),
                  ).paddingOnly(
                    left: 3.w,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>searchScreen()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: appsColor.iconColor,
                        ),
                        child: Icon(
                          Icons.search,
                          size: 23.sp,
                          color: appsColor.whiteColor,
                        ),
                      )..paddingOnly(bottom: 2.h),
                    ),
                  ),
                ],
              ).paddingSymmetric(horizontal: 15.sp),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Feature Recipe',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12.sp,
                  fontFamily: 'poppins',
                  color: appsColor.blackColor,
                ),
                ).paddingOnly(left: 3.w),
                Container(
                  height: 18.h,
                  child: ListView.separated(
                    controller: _controller,
                    scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index)=>Transform(
                        transform: Matrix4.skewX(0.15),
                        child: Container(
                          height: 15.h,
                          width: 70.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(images[index]),
                            ),
                          ),
                          child: Container(
                            height: 15.h,
                            width: 70.w,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                appsColor.whiteColor.withOpacity(0),
                                appsColor.blackColor,
                              ]),
                              borderRadius: BorderRadius.circular(11),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(food[index],
                                  style: TextStyle(
                                    fontFamily: 'poppins',
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w600,
                                    color: appsColor.whiteColor,
                                  ),
                                ),
                                Text(name[index],
                                  style: TextStyle(
                                    fontFamily: 'poppins',
                                    fontSize: 8.sp,
                                    fontWeight: FontWeight.w400,
                                    color: appsColor.greyColor,
                                  ),
                                ),
                                RatingStars(
                                  value: rating,
                                  onValueChanged: (value){
                                    setState(() {
                                      rating=value;
                                    });
                                  },
                                  starSize: 11.sp,
                                  valueLabelVisibility: false,
                                ),
                              ],
                            ).paddingOnly(left: 15.sp,bottom: 15.sp ),
                          ),
                        ),
                      ),
                      separatorBuilder: (context,index)=>SizedBox(width: 10.sp,),
                      itemCount: images.length,
                  ),
                ),
                Row(
                  children: List.generate(images.length,
                        (index) =>buildIndicator(index,context),

                  ),
                ).paddingOnly(left: 16.h),
                ChipsChoice<int>.single(
                  placeholderStyle: TextStyle(
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 12.sp,
                    color: appsColor.iconColor,
                  ),
                  value: tag,
                  onChanged: (value) => setState(() => tag = value),
                  choiceItems: C2Choice.listFrom<int, String>(
                    source: options,
                    value: (i, v) => i,
                    label: (i, v) => v,
                  ),
                ),
                // Expanded(
                //   child: GridView(
                //     padding: EdgeInsets.all(10),
                //       gridDelegate:
                //       SliverGridDelegateWithFixedCrossAxisCount(
                //         crossAxisCount: 2,
                //       ),
                //     children: [
                //       Container(color: appsColor.iconColor,),
                //       Container(color: appsColor.iconColor,),
                //       Container(color: appsColor.iconColor,),
                //     ],
                //   ),
                // ),
                // GridView.builder(
                //   scrollDirection: Axis.vertical,
                //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //     crossAxisCount: 2,
                // ),
                //     itemBuilder: (context, index){
                //   Container(
                //     color: appsColor.iconColor,
                //   );Container(
                //     color: appsColor.iconColor,
                //   );
                //     }),
              ],
            ),
          ),
      ],
      ),
    );
  }
  Container buildIndicator(int index,BuildContext context){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.sp),
      height: 6.5.sp,
      width: 6.5.sp,
      decoration: BoxDecoration(
        color: currentIndex==index?appsColor.iconColor:Colors.transparent,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: currentIndex==index?appsColor.iconColor:appsColor.indicateColor),
      ),
    );
  }
}

