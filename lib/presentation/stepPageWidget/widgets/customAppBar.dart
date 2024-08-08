import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:madrasa_task/core/utilities/CustomText.dart';
import 'package:madrasa_task/core/utilities/CustomTextStyle.dart';
import 'package:madrasa_task/core/utilities/app_colors.dart';
import 'package:madrasa_task/core/utilities/imageHelper.dart';
import 'package:madrasa_task/core/utilities/image_paths.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ImageHelper(
          image: madrasaImage,
          imageType: ImageType.asset,
          height: 50.h,
          width: 100.w,
        ),
        Spacer(),
        CustomText(
            text: 'تخطي',
            customTextStyle: RegularStyle(color: blackColor, fontSize: 18.sp))
      ],
    );
  }
}
