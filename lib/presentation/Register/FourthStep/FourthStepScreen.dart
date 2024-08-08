import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:madrasa_task/core/utilities/CustomText.dart';
import 'package:madrasa_task/core/utilities/CustomTextStyle.dart';
import 'package:madrasa_task/core/utilities/app_colors.dart';
import 'package:madrasa_task/core/widgets/custom_text_field.dart';
import 'package:madrasa_task/generated/l10n.dart';
import 'package:madrasa_task/presentation/Register/FourthStep/widgets/CustomGridViewForDays.dart';
import 'package:madrasa_task/presentation/Register/FourthStep/widgets/CustomGridViewForPeriod.dart';
import 'package:madrasa_task/presentation/Register/FourthStep/widgets/CustomGridViewForTime.dart';
import 'package:madrasa_task/presentation/Register/secondStep/widgets/CustomGridViewForClassRoomTexts.dart';
import 'package:madrasa_task/presentation/Register/secondStep/widgets/CustomGridViewForCurriculumTexts.dart';
import 'package:madrasa_task/presentation/Register/secondStep/widgets/CustomGridViewForEducationalTexts.dart';
import 'package:madrasa_task/presentation/stepPageWidget/view_model/StepPageScreenCubit.dart';
import 'package:madrasa_task/presentation/stepPageWidget/view_model/StepPageScreenStates.dart';

class FourthStepScreen extends StatelessWidget {
  FourthStepScreen({super.key});

  var h = 812.h;
  var w = 375.w;

  @override
  Widget build(BuildContext context) {
    var stepPageCubit=BlocProvider.of<StepPageScreenCubit>(context);
    return BlocBuilder<StepPageScreenCubit,StepPageScreenStates>(
      builder: (context, state) => Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      text: '${S.current.selectTheTime}',
                      customTextStyle:
                      RegularStyle(color: greyColor, fontSize: 18.sp)),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.h,),
          CustomText(
              text: 'الايام المناسبة لك ',
              customTextStyle: BoldStyle(color: blackColor, fontSize: 22.sp)),
          SizedBox(
            height: 5.h,
          ),
          CustomGridViewForDays(texts: [
            'السبت',
            'الاحد',
            'الاثنين',
            'الثلاثاء',
            'الاربع',
            'الخميس',
            'الجمعة'
          ]),
          SizedBox(
            height: 10.h,
          ),
          CustomText(
              text: 'ما الفترة الزمنية المناسبة لك',
              customTextStyle: BoldStyle(color: blackColor, fontSize: 22.sp)),
          SizedBox(
            height: 5.h,
          ),
          CustomGridViewForPeriod(texts: [
            'الفترة  الصباحية',
            'الفترة  المسائية',
          ]),
          SizedBox(
            height: 10.h,
          ),
          CustomText(
              text: 'اختر التوقيت المناسب لك',
              customTextStyle: BoldStyle(color: blackColor, fontSize: 22.sp)),
          SizedBox(
            height: 5.h,
          ),
          CustomGridViewForTime(texts: [
            '15:00 ص',
            '17:00 ص',
            '19:00 ص',
            ' 20:00 ص',
            "22:00 ص"
          ])

        ],
      ),
    );
  }
}
