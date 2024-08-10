import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:madrasa_task/core/utilities/CustomTextStyle.dart';
import 'package:madrasa_task/core/utilities/app_colors.dart';


class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key,
      required this.hint,
        this.readOnly=false,
      this.keyboardType = TextInputType.text,
      required this.controller,
      required this.validator,
      this.obscureText = false,
      this.color = whiteColor,this.suffixIcon=false,this.icon,this.maxLines=1});
  bool suffixIcon;
  String hint;
  TextInputType keyboardType;
  TextEditingController controller;
  String? Function(String?) validator;
  bool obscureText;
  Color color;
  Widget? icon;
  int maxLines;
 bool readOnly;
  @override
  Widget build(BuildContext context) {
    return TextFormField(maxLines: maxLines,readOnly: readOnly,
      style: RegularStyle(fontSize: 20.sp).getStyle(),
      decoration: InputDecoration(suffixIcon: suffixIcon? icon :null,
        hintText: hint,
        hintStyle: RegularStyle(fontSize: 20.sp,color: greyColor).getStyle(),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: greyColor, width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: greyColor, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: redColor, width: 2),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: redColor, width: 2),
        ),
      ),
      keyboardType: keyboardType,
      controller: controller,
      validator: validator,
      obscureText: obscureText,
    );
  }
}
