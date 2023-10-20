import 'package:flutter/material.dart';
import 'package:food_street/helpers/constants.dart';
import 'package:sizer/sizer.dart';
class favoriteRecipeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: appsColor.whiteColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 10.h,
            expandedHeight: 40.h,
            leadingWidth: 20.w,
            leading: Container(
              height: 40.h,
              width: 20.w,
              // child: Image.asset('assets/images/skwimg.png',),
            ),
          ),
        ],
      )
    );
  }

}