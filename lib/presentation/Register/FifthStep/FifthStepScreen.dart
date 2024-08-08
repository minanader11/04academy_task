import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:madrasa_task/core/utilities/CustomText.dart';
import 'package:madrasa_task/core/utilities/CustomTextStyle.dart';
import 'package:madrasa_task/core/utilities/app_colors.dart';
import 'package:madrasa_task/core/widgets/custom_text_field.dart';
import 'package:madrasa_task/generated/l10n.dart';
import 'package:madrasa_task/presentation/Register/FifthStep/widgets/CustomGridViewForLessonTime.dart';
import 'package:madrasa_task/presentation/Register/FifthStep/widgets/CustomGridViewForLessonse.dart';
import 'package:madrasa_task/presentation/Register/FifthStep/widgets/CustomSubscriptionContainer.dart';
import 'package:madrasa_task/presentation/Register/FourthStep/widgets/CustomGridViewForDays.dart';
import 'package:madrasa_task/presentation/Register/FourthStep/widgets/CustomGridViewForPeriod.dart';
import 'package:madrasa_task/presentation/Register/FourthStep/widgets/CustomGridViewForTime.dart';
import 'package:madrasa_task/presentation/stepPageWidget/view_model/StepPageScreenCubit.dart';
import 'package:madrasa_task/presentation/stepPageWidget/view_model/StepPageScreenStates.dart';

class FifthStepScreen extends StatelessWidget {
  FifthStepScreen({super.key});

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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      text: '${S.current.createYourPackage}',
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
              text: 'الايام المناسبة لك ',
              customTextStyle: BoldStyle(color: blackColor, fontSize: 22.sp)),
          SizedBox(
            height: 5.h,
          ),
          CustomGridViewForLessons(texts: ['حصة واحدة', 'حصتين']),
          SizedBox(
            height: 10.h,
          ),
          CustomText(
              text: 'كم عدد الساعات المناسبة لك',
              customTextStyle: BoldStyle(color: blackColor, fontSize: 22.sp)),
          SizedBox(
            height: 5.h,
          ),
          CustomGridViewForLessonTime(texts: [
            'ساعة و نص',
            'ساعتين',
            '30 دقيقة',
            'ساعة واحدة',
            'ساعتين و نص',
          ]),
          SizedBox(
            height: 10.h,
          ),
          CustomText(
              text: 'مدةالاشتراك',
              customTextStyle: BoldStyle(color: blackColor, fontSize: 22.sp)),
          SizedBox(
            height: 5.h,
          ),
          // CustomSubscriptionContainer(
          //     subscriptionResponseEntity: stepPageCubit.subscriptions[0]),
          Container(
            color: whiteColor,
            width: 200.w,
            height: 300.h,
            //padding: EdgeInsetsDirectional.only(start: 10.w),
            child: ListView.builder(padding: EdgeInsets.zero,
              itemCount: stepPageCubit.subscriptions.length,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsetsDirectional.only(start: 10.w,top: 10.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomSubscriptionContainer( isSelected: stepPageCubit.selectedSubscriptionIndex==index,onTap: (){
                      stepPageCubit.changeSubscriptionIndex(index);
                    },
                        subscriptionResponseEntity:
                            stepPageCubit.subscriptions[index]),
                    SizedBox(
                      height: 10.h,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
