import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:madrasa_task/core/utilities/CustomText.dart';
import 'package:madrasa_task/core/utilities/CustomTextStyle.dart';
import 'package:madrasa_task/core/utilities/app_colors.dart';
import 'package:madrasa_task/core/utilities/imageHelper.dart';
import 'package:madrasa_task/core/utilities/image_paths.dart';
import 'package:madrasa_task/core/widgets/custom_text_field.dart';
import 'package:madrasa_task/generated/l10n.dart';
import 'package:madrasa_task/presentation/Register/secondStep/widgets/CustomGridViewForClassRoomTexts.dart';
import 'package:madrasa_task/presentation/Register/secondStep/widgets/CustomGridViewForCurriculumTexts.dart';
import 'package:madrasa_task/presentation/Register/secondStep/widgets/CustomGridViewForEducationalTexts.dart';
import 'package:madrasa_task/presentation/Register/secondStep/widgets/CustomTextContainer.dart';
import 'package:madrasa_task/presentation/stepPageWidget/view_model/StepPageScreenCubit.dart';
import 'package:madrasa_task/presentation/stepPageWidget/view_model/StepPageScreenStates.dart';

class SixthStepScreen extends StatelessWidget {
  SixthStepScreen({super.key});

  var h = 812.h;
  var w = 375.w;

  @override
  Widget build(BuildContext context) {
    var stepPageCubit = BlocProvider.of<StepPageScreenCubit>(context);
    return BlocBuilder<StepPageScreenCubit, StepPageScreenStates>(
      builder: (context, state) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IntrinsicHeight(
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: greenColor,
                      borderRadius: BorderRadius.circular(4.r)),
                  //height: 60.h,
                  width: 6.w,
                ),
                // VerticalDivider(
                //   color: greenColor,
                //   width: 2.w,
                //   thickness: 2.w,
                //   // indent: 2.w,
                //   // endIndent: 30.w,
                // ),

                SizedBox(
                  width: 6.w,
                ),
                Flexible(
                  child: CustomText(
                      //   softWrap: true,
                      text: '${S.current.getReadyToLearn}',
                      customTextStyle:
                          RegularStyle(color: greyColor, fontSize: 18.sp)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          CustomText(
              text: 'كم حصة اسبوعيا',
              customTextStyle:
                  RegularStyle(color: blackColor, fontSize: 20.sp)),
          IntrinsicHeight(
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: greenColor,
                      borderRadius: BorderRadius.circular(4.r)),
                  //height: 60.h,
                  width: 6.w,
                ),
                // VerticalDivider(
                //   color: greenColor,
                //   width: 2.w,
                //   thickness: 2.w,
                //   // indent: 2.w,
                //   // endIndent: 30.w,
                // ),

                SizedBox(
                  width: 6.w,
                ),
                // Flexible(
                //   child: CustomText(
                //     //   softWrap: true,
                //       text: '${S.current.getReadyToLearn}',
                //       customTextStyle:
                //       RegularStyle(color: greyColor, fontSize: 18.sp)),
                // ),
                Expanded(
                  child: Container(
                    padding: EdgeInsetsDirectional.symmetric(
                        horizontal: 5.w, vertical: 10.h),
                    decoration: BoxDecoration(
                        border: Border.all(color: greenColor,width: 2),
                        borderRadius: BorderRadius.circular(6.r)),
                    child: CustomText(
                        text: 'الاجمالي: 56.5 درهم',
                        customTextStyle: RegularStyle(fontSize: 16.sp)),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10.h,),
          Container(width: w,height: 60.h,
            padding: EdgeInsetsDirectional.symmetric(
                horizontal: 5.w, vertical: 10.h),
            decoration: BoxDecoration(
                border: Border.all(color: greenColor,width: 2),
                borderRadius: BorderRadius.circular(6.r)),
            child: Center(
              child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.circle,color: greenColor),
                  SizedBox(width: 5.w,),
                  CustomText(
                      text: 'بطاقة ائتمان',
                      customTextStyle: RegularStyle(fontSize: 16.sp)),
                Spacer(),
                  ImageHelper(
                    image: visa,
                    imageType: ImageType.svg,
                    height: 15.h,
                    width: 15.h,
                  ),
                  SizedBox(width: 10.w,),
                  ImageHelper(
                    image: cash,
                    imageType: ImageType.svg,
                    height: 30.h,
                    width: 50.h,
                    color: greyColor,
                  ),
                  SizedBox(width: 10.w,),
                  ImageHelper(
                    image: masterCard,
                    imageType: ImageType.svg,
                    height: 20.h,
                    width: 20.h,

                  ),
                  SizedBox(width: 10.w,)
                ],
              ),
            ),
          ),
          SizedBox(height: 10.h,),
          CustomTextField(
              suffixIcon: false,
              hint: 'رقم البطاقة',
              controller: TextEditingController(),
              validator: (string) {}),
          SizedBox(height: 10.h,),
          CustomTextField(
              suffixIcon: false,
              hint: 'تاريخ انتهاء الصلاحية',
              controller: TextEditingController(),
              validator: (string) {}),
          SizedBox(height: 10.h,),
          CustomTextField(
              suffixIcon: false,
              hint: 'رمز الحماية',
              controller: TextEditingController(),
              validator: (string) {}),
          SizedBox(height: 10.h,),
          CustomTextField(
              suffixIcon: false,
              hint: 'الاسم علي البطاقة',
              controller: TextEditingController(),
              validator: (string) {}),
          //CustomTextContainer(text: 'رياض الاطفال')
        ],
      ),
    );
  }
}
