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

class SeventhStepScreen extends StatelessWidget {
  const SeventhStepScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var stepPageCubit = BlocProvider.of<StepPageScreenCubit>(context);
    return BlocBuilder<StepPageScreenCubit, StepPageScreenStates>(
      builder: (context, state) => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
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
                      text: '${S.current.thankYou}',
                      customTextStyle:
                          RegularStyle(color: greyColor, fontSize: 18.sp)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Center(
            child: Container(height: 300.h,width:150.w,decoration: BoxDecoration(color: greenColor,shape: BoxShape.circle),
              child: FittedBox(child: Icon(Icons.done,color: whiteColor,)),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          CustomText(textAlign: TextAlign.center,text: 'تم الدفع بنجاح', customTextStyle: BoldStyle(color: greenColor,fontSize: 26.sp)),
          CustomText(textAlign: TextAlign.center,text: 'شكرا علي ثقتك في المدرسة دوت كوم', customTextStyle: BoldStyle(color: greenColor.withOpacity(0.5),fontSize: 18.sp))
          //CustomTextContainer(text: 'رياض الاطفال')
        ],
      ),
    );
  }
}
