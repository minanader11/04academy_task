import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:madrasa_task/core/utilities/CustomTextStyle.dart';
import 'package:madrasa_task/core/utilities/app_colors.dart';


class CustomDropdownButton extends StatelessWidget {
  final String? selectedValue;
  final List<String> items;
  final String hintText;
  final CustomTextStyle? hintStyle;
  final Color borderColor;
  final Color iconColor;
  final void Function(String?) onChanged;

  const CustomDropdownButton({
    super.key,
    required this.selectedValue,
    required this.items,
    required this.onChanged,
    this.hintText = 'Select',
    this.hintStyle,
    this.borderColor = greyColor,
    this.iconColor = greyColor,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(padding: EdgeInsets.zero,
      //decoration: InputDecoration(hintText: hintText,),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: hintStyle?.getStyle(),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0.r),
          borderSide: BorderSide(
            color: borderColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0.r),
          borderSide: BorderSide(
            color: borderColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0.r),
          borderSide: BorderSide(
            color: borderColor,
          ),
        ),
      ),
      iconEnabledColor: iconColor,
      value: selectedValue,
      // Use the selected value passed from the parent
      items: items.map((String item) {
        return DropdownMenuItem(
          value: item,
          child: Text(item),
        );
      }).toList(),
      style: hintStyle?.getStyle(),
      onChanged: onChanged,
    );
  }
}
