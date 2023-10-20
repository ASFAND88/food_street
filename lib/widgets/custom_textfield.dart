import 'package:flutter/material.dart';
import 'package:food_street/helpers/constants.dart';
import 'package:sizer/sizer.dart';



class customTextField extends StatelessWidget {
  bool? isHidden;
  String? label;
  String? hinttext;
  TextEditingController? TextController;
  TextInputType? Keyboardtype;
  bool? obscureText;
  IconData? suffix;
  Color? iconcolor;
  bool ? Iconyn;
  VoidCallback? onTab;
  int? maxLines;
  FormFieldValidator<String>? validator;


  customTextField({
    this.label,
    required this.hinttext,
    this.TextController,
    this.Keyboardtype,
    this.obscureText =false,
    this.suffix,
    this.Iconyn = false,
    this.onTab,
    this.iconcolor,
    this.maxLines,
    this.validator,
    this.isHidden,
  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.symmetric(vertical: 1.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Padding(
            padding:  EdgeInsets.symmetric(horizontal:2.h),
            child: Text(label ?? 'Enter Text', style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.bold,color: Colors.grey,fontSize: 12),),
          ),
          SizedBox(height:.5.h,),
          Container(
            decoration: BoxDecoration(
              //border: Border.fromBorderSide(//side)
            ),
            child: SizedBox(
              height: 38,
              child: TextFormField(
                obscureText: obscureText ?? false,
                controller: TextController ,
                keyboardType: Keyboardtype,
                maxLines: maxLines ?? 1,
                validator: validator ?? null,
                decoration: InputDecoration(
                  hintText: hinttext,
                  contentPadding:   EdgeInsets.symmetric( horizontal: 3.h),
                  suffixIcon :Iconyn == true ? IconButton(
                    onPressed: onTab,
                    icon: Icon(suffix,color: iconcolor,),) : null,
                  hintStyle: TextStyle(fontSize: 10 , color: appsColor.blackColor),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: appsColor.iconColor ,width: 2),
                      borderRadius: BorderRadius.circular(20),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: appsColor.iconColor ,width: 2),
                      borderRadius: BorderRadius.circular(20),
                  ),

                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}



// class customTextField extends StatelessWidget {
//   String hintText = 'Example: johndoe@gmail.com';
//   bool? isHidden;
//   int? maxLines;
//   TextInputType? keyboardType;
//   VoidCallback? onTab;
//   IconData? suffix;
//   Icon? icon;
//   Color? color;
//   FormFieldValidator<String>? validator;
//   TextEditingController? controller;
//
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       maxLines: maxLines ?? 1,
//       validator: validator ?? null,
//       controller: controller,
//       keyboardType: keyboardType ?? TextInputType.emailAddress,
//       obscureText: isHidden ?? false,
//       decoration: InputDecoration(
//         contentPadding: EdgeInsets.symmetric(horizontal: 10.sp, vertical: 8.sp),
//         suffixIcon: GestureDetector(onTap: onTab, child: Icon(suffix)),
//         hintText: hintText,
//         helperStyle: TextStyle(color: NotesColor.neutralBaseColor),
//         enabledBorder: OutlineInputBorder(
//           borderSide: BorderSide(color: NotesColor.neutralBaseColor),
//           borderRadius: BorderRadius.circular(8),
//         ),
//         border: OutlineInputBorder(
//           borderSide: BorderSide(color: NotesColor.neutralBaseColor),
//           borderRadius: BorderRadius.circular(8),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderSide: BorderSide(color: NotesColor.neutralBaseColor),
//           borderRadius: BorderRadius.circular(8),
//         ),
//         prefixIcon: icon,
//       ),
//     );
//   }
//
//   customTextField({
//     required this.hintText,
//     this.isHidden,
//     this.keyboardType,
//     this.onTab,
//     this.suffix,
//     this.validator,
//     this.icon,
//     this.maxLines,
//     this.color,
//     this.controller,
//   });
// }