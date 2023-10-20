import 'package:flutter/material.dart';
import 'package:food_street/helpers/constants.dart';
import 'package:food_street/views/layouts/screen_favoriterecipe.dart';
class LayoutFavorite extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: appsColor.whiteColor,
      body: SafeArea(
        child: Center(
          child: GestureDetector(
            onTap: (){
              Navigator.push(context,
              MaterialPageRoute(builder: (context)=>favoriteRecipeScreen()),
              );
            },
            child: Container(
              child: Text('Recipe'),
              color: appsColor.iconColor,
            ),
          ),
        ),
        // child: GridView.builder(
        //     scrollDirection: Axis.vertical,
        //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //       crossAxisCount: 2,
        //     ),
        //     itemBuilder: (context, index){
        //       Container(
        //         color: appsColor.iconColor,
        //       );
        //     }),
      ),
    );
  }

}