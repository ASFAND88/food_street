import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/material.dart';
import 'package:food_street/extensions/padding_extensions.dart';
import 'package:food_street/helpers/constants.dart';
import 'package:sizer/sizer.dart';
import 'package:checkbox_grouped/checkbox_grouped.dart';

class searchScreen extends StatefulWidget {
  @override
  State<searchScreen> createState() => _searchScreenState();
}

class _searchScreenState extends State<searchScreen> {
  int tag=1;
  GroupController controller = GroupController();
  List<String> value = [
    'Chiken Recipe',
    'Chiken Wings Recipe',
    'Chiken Wings Recipe',
    'Chiken Recipe',
    'Chiken Wings Recipe',
    'Chiken Wings Recipe',
    'Chiken Wings Recipe',
    'Chiken Recipe',

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: appsColor.whiteColor,
      appBar: AppBar(
        backgroundColor: appsColor.whiteColor,
        elevation: 1.sp,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon:Icon(
            Icons.arrow_back_ios,
            size: 10.sp,
            color: appsColor.blackColor,
          ),
        ),
        centerTitle: true,
        title: Text(
          "Search",
          style: TextStyle(
              color: appsColor.blackColor,
              fontWeight: FontWeight.w500,
              fontSize: 12.sp,
              fontFamily: "poppins"),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.sp),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: "Search Recipe here",
                hintStyle: TextStyle(fontSize: 10.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: "poppins",
                    color: appsColor.greyColor),
                icon: Icon(Icons.search_rounded,
                color: appsColor.blackColor,
                  size: 15.sp,
                ),
                suffixIcon: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: appsColor.iconColor,
                    // borderRadius: BorderRadius.all(4.sp),
                  ),
                  child: Image.asset("assets/images/iconsearch.png"),
                ).paddingAll(2.5.w),
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
            ).paddingSymmetric(horizontal: 10.sp),
            Container(
              child: Expanded(
                child: ListView.separated(
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Chiken Wings Recipe",
                            style: TextStyle(
                                color: appsColor.blackColor,
                                fontFamily: "poppins",
                                fontWeight: FontWeight.w500,
                                fontSize: 10.sp),
                          ),
                          Image.asset("assets/images/editsearch.png"),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return Divider(
                      indent: 10,
                      endIndent: 10,
                      thickness: 1.sp,
                    );
                  },
                ),
              ),
            ),
            Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Suggested Recipe',
                      style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500,
                        color: appsColor.blackColor,
                      ),
                    ).paddingOnly(bottom: 4.h,),
                    SimpleGroupedChips(controller:GroupController(),
                      values: [1,2,3,4,5,6,7,8,9],
                      itemsTitle: value,
                      chipGroupStyle: ChipGroupStyle.minimize(
                        direction: ChipsDirection.wrap,
                        selectedColorItem: appsColor.iconColor,
                        backgroundColorItem: appsColor.iconColor,
                        itemTitleStyle: TextStyle(
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.w500,
                          fontSize: 8.sp,
                        ),
                        textColor: appsColor.whiteColor,
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
