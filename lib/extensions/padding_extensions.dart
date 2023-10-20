import 'package:flutter/material.dart';
extension WidgetExtensions on Widget{
  Widget paddingAll(double padding){
    return Padding(
      padding:EdgeInsets.all(padding),
      child:this,
    );
  }
  Widget paddingSymmetric({double horizontal=0, double vertical=0}){
    return Padding(padding: EdgeInsets.symmetric(horizontal: horizontal,vertical: vertical),
      child: this,
    );
  }
  Widget paddingOnly({
    double top=0,
    double right=0,
    double left=0,
    double bottom=0,
}){
    return Padding(padding: EdgeInsets.only(left: left,right: right,top: top,bottom: bottom),
    child: this,
    );
  }
}