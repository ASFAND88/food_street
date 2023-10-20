import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_street/helpers/constants.dart';
import 'package:food_street/views/layouts/layout_favorite.dart';
import 'package:food_street/views/layouts/layout_home.dart';
import 'package:food_street/views/layouts/layout_profile.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
class bottomNavigationScreen extends StatelessWidget{
  List<Widget> layouts(){
    return[
      LayoutHome(),
      LayoutFavorite(),
      LayoutProfile(),
    ];
  }
  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
        screens: layouts(),
      decoration: NavBarDecoration(
        colorBehindNavBar: appsColor.blackColor,
      ),
      backgroundColor: appsColor.blackColor,
      navBarStyle: NavBarStyle.style7,
      items: [
        PersistentBottomNavBarItem(icon:SvgPicture.asset('assets/images/home.svg'),
          title: "Home",
          inactiveIcon: SvgPicture.asset('assets/images/home2.svg'),
          activeColorPrimary: appsColor.iconColor,
          activeColorSecondary: appsColor.whiteColor,
        ),
        PersistentBottomNavBarItem(
          icon:Icon(Icons.favorite),
          inactiveIcon: Icon(Icons.favorite_border),
          title: "Favorite",
          activeColorPrimary: appsColor.iconColor,
          activeColorSecondary: appsColor.whiteColor,
        ),
        PersistentBottomNavBarItem(icon:SvgPicture.asset('assets/images/Profile.svg'),
          title: "Profile",
          activeColorPrimary: appsColor.iconColor,
          activeColorSecondary: appsColor.whiteColor,
        ),
      ],
    );
  }
}