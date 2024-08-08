import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:madrasa_task/core/utilities/CustomText.dart';
import 'package:madrasa_task/core/utilities/CustomTextStyle.dart';
import 'package:madrasa_task/core/utilities/app_colors.dart';
import 'package:madrasa_task/generated/l10n.dart';
import 'package:madrasa_task/presentation/Register/secondStep/widgets/CustomGridViewForClassRoomTexts.dart';
import 'package:madrasa_task/presentation/Register/secondStep/widgets/CustomGridViewForCurriculumTexts.dart';
import 'package:madrasa_task/presentation/Register/secondStep/widgets/CustomGridViewForEducationalTexts.dart';
import 'package:madrasa_task/presentation/Register/secondStep/widgets/CustomTextContainer.dart';
import 'package:madrasa_task/presentation/stepPageWidget/view_model/StepPageScreenCubit.dart';
import 'package:madrasa_task/presentation/stepPageWidget/view_model/StepPageScreenStates.dart';

class SecondStepScreen extends StatelessWidget {
  const SecondStepScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var stepPageCubit=BlocProvider.of<StepPageScreenCubit>(context);
    return BlocBuilder<StepPageScreenCubit,StepPageScreenStates>(
      builder: (context, state) =>Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IntrinsicHeight(
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: yellowColor,
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
                      text: '${S.current.chooseYourLevel}',
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
              text: 'حدد المرحلة الدراسية',
              customTextStyle: BoldStyle(color: blackColor, fontSize: 22.sp)),
          SizedBox(
            height: 5.h,
          ),
          CustomGridViewForEducationalTexts(texts: [
            'رياض الاطفال',
            'التعليم الابتدائي',
            'التعليم المتوسط',
            'التعليم الثانوي'
          ]),
          SizedBox(
            height: 10.h,
          ),
          CustomText(
              text: 'حدد صفك الدراسي',
              customTextStyle: BoldStyle(color: blackColor, fontSize: 22.sp)),
          SizedBox(
            height: 5.h,
          ),
          CustomGridViewForClassRoomTexts(texts: [
            'الصف الخامس',
            'الصف السادس',
            'الصف السابع',
            'الصف الثامن'
          ]),
          SizedBox(
            height: 10.h,
          ),
          CustomText(
              text: 'حدد المنهج الدراسي',
              customTextStyle: BoldStyle(color: blackColor, fontSize: 22.sp)),
          SizedBox(
            height: 5.h,
          ),
          CustomGridViewForCurriculumTexts(texts: [
            'المنهج البريطاني',
            'المنهج الامريكي',
            'اخري',
            'المنهج الوزاري'
          ])

          //CustomTextContainer(text: 'رياض الاطفال')
        ],
      ),
    );
  }
}
