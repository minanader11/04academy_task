import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:madrasa_task/core/utilities/CustomText.dart';
import 'package:madrasa_task/core/utilities/CustomTextStyle.dart';
import 'package:madrasa_task/core/utilities/app_colors.dart';
import 'package:madrasa_task/core/utilities/imageHelper.dart';
import 'package:madrasa_task/core/utilities/image_paths.dart';
import 'package:madrasa_task/presentation/stepPageWidget/view_model/StepPageScreenCubit.dart';
import 'package:madrasa_task/presentation/stepPageWidget/view_model/StepPageScreenStates.dart';

class CustomSubjectContainer extends StatelessWidget {
  CustomSubjectContainer(
      {super.key, required this.text, this.isSelected = false, this.onTap});

  String text;
  bool isSelected = false;
  Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StepPageScreenCubit, StepPageScreenStates>(
      builder: (context, state) => InkWell(
        onTap: onTap,
        child: Card(elevation: 10,
          margin: EdgeInsets.zero,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: isSelected ? greenColor : whiteColor),
              borderRadius: BorderRadius.circular(10.r),
              color: whiteColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(0, 0), // changes position of shadow
                ),
              ],
            ),
            padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
            child: Column(
              children: [
               ImageHelper(image: globeImage, imageType: ImageType.svg,height: 40.h,width: 40.w,color: greenColor,),
                CustomText(
                    text: text,
                    customTextStyle:
                    RegularStyle(color: blackColor, fontSize: 18.sp)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}