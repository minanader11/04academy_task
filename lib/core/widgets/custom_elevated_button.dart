import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:madrasa_task/core/utilities/CustomText.dart';
import 'package:madrasa_task/core/utilities/CustomTextStyle.dart';

class CustomElevatedButton extends StatelessWidget {
  Color backGroundColor;


  Function()? onPressed;
  BorderSide? borderSide;
  OutlinedBorder? outlinedBorder;
  Widget child;
  CustomElevatedButton(
      {required this.backGroundColor,
   this.borderSide,
        this.outlinedBorder,
      required this.onPressed,required this.child});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: backGroundColor,side: borderSide,shape: outlinedBorder),
        onPressed: onPressed,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          child: child
        ));
  }
}
