import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:madrasa_task/core/utilities/CustomText.dart';
import 'package:madrasa_task/core/utilities/CustomTextStyle.dart';
import 'package:madrasa_task/core/utilities/app_colors.dart';
import 'package:madrasa_task/core/utilities/imageHelper.dart';
import 'package:madrasa_task/core/widgets/custom_elevated_button.dart';
import 'package:madrasa_task/generated/l10n.dart';
import 'package:madrasa_task/presentation/Register/FirstStep/FirstStepScreen.dart';
import 'package:madrasa_task/presentation/stepPageWidget/view_model/StepPageScreenCubit.dart';
import 'package:madrasa_task/presentation/stepPageWidget/view_model/StepPageScreenStates.dart';
import 'package:madrasa_task/presentation/stepPageWidget/widgets/customAppBar.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class StepPageScreen extends StatelessWidget {
  var h = 812.h;
  var w = 375.w;

  @override
  Widget build(BuildContext context) {
    var stepPageCubit=BlocProvider.of<StepPageScreenCubit>(context);
    return BlocBuilder<StepPageScreenCubit,StepPageScreenStates>(
      builder: (context, state) => Scaffold(
        backgroundColor: whiteColor,
        body: SingleChildScrollView(
          child: Container(
            height: h,
            width: w,
            padding: EdgeInsetsDirectional.only(top: 50.h, start: 10.w, end: 10.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CustomAppBar(),
                LinearPercentIndicator(
                  isRTL: true,
                  barRadius: Radius.circular(10.r),
                  // width: w,
                  lineHeight: 14.0,
                  percent: (stepPageCubit.tabIndex+1)*0.14,
                  backgroundColor: Colors.grey,
                  progressColor: greenColor,
                ),
                SizedBox(
                  height: 10.h,
                ),
                 stepPageCubit.tabs[stepPageCubit.tabIndex],
                 //FirstStepScreen(),
                // IntrinsicHeight(
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     //crossAxisAlignment: CrossAxisAlignment.stretch,
                //     children: [
                //       Container(
                //         decoration: BoxDecoration(
                //             color: greenColor,
                //             borderRadius: BorderRadius.circular(4.r)),
                //         //height: 60.h,
                //         width: 6.w,
                //       ),
                //       // VerticalDivider(
                //       //   color: greenColor,
                //       //   width: 2.w,
                //       //   thickness: 2.w,
                //       //   // indent: 2.w,
                //       //   // endIndent: 30.w,
                //       // ),
                //
                //       SizedBox(
                //         width: 6.w,
                //       ),
                //       Flexible(
                //         child: CustomText(
                //           //   softWrap: true,
                //             text: '${S.current.areYou}',
                //             customTextStyle:
                //             RegularStyle(color: greyColor, fontSize: 18.sp)),
                //       )
                //     ],
                //   ),
                // ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: CustomElevatedButton(borderSide: BorderSide(color: greenColor),
                          outlinedBorder: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.r)),
                          backGroundColor: Colors.white,
                          onPressed: () {
                        stepPageCubit.decreaseTabIndex();
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FittedBox(
                                  child: Icon(
                                    Icons.keyboard_double_arrow_right,
                                    color: greenColor,
                                  )),
                              CustomText(
                                  text: 'السابق',
                                  customTextStyle: BoldStyle(color: greenColor)),

                            ],
                          )),
                    ),
                    SizedBox(width: 5.w,),
                    Expanded(
                      child: CustomElevatedButton(
                          outlinedBorder: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.r)),
                          backGroundColor: greenColor,
                          onPressed: () {
                            stepPageCubit.increaseTabIndex();
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomText(
                                  text: 'التالي',
                                  customTextStyle: BoldStyle(color: whiteColor)),
                              FittedBox(
                                  child: Icon(
                                Icons.keyboard_double_arrow_left,
                                color: whiteColor,
                              ))
                            ],
                          )),
                    ),

                  ],
                ),
                SizedBox(height: 20.h,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
