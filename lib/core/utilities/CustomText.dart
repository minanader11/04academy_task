 import 'package:flutter/material.dart';
import 'package:madrasa_task/core/utilities/CustomTextStyle.dart';
import 'package:madrasa_task/core/utilities/shared_pref_helper.dart';


class CustomText extends StatelessWidget {
  final String text;
  final TextAlign textAlign;
  final bool softWrap;
  final CustomTextStyle customTextStyle;
  final int? maxLines;

  const CustomText(
      {required this.text,
        required this.customTextStyle,
        this.textAlign = TextAlign.start,
        this.softWrap = true,
        this.maxLines});

  @override
  Widget build(BuildContext context) => customText;

  Text get customText => Text(
    //textDirection: SharedPRefHelper().getLanguage=='ar'?TextDirection.rtl:TextDirection.ltr,
    text.toString()=='null'?'':text,
    textAlign: textAlign,
    style: customTextStyle.getStyle(),
    maxLines: maxLines,
    softWrap: softWrap,
  );
}