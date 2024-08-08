import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:madrasa_task/core/utilities/CustomText.dart';
import 'package:madrasa_task/core/utilities/CustomTextStyle.dart';
import 'package:madrasa_task/core/utilities/app_colors.dart';
import 'package:madrasa_task/core/utilities/imageHelper.dart';
import 'package:madrasa_task/core/utilities/image_paths.dart';
import 'package:madrasa_task/domain/entities/SubscriptionResponse.dart';
import 'package:madrasa_task/presentation/stepPageWidget/view_model/StepPageScreenCubit.dart';
import 'package:madrasa_task/presentation/stepPageWidget/view_model/StepPageScreenStates.dart';

class CustomSubscriptionContainer extends StatelessWidget {
  CustomSubscriptionContainer(
      {super.key,
      required this.subscriptionResponseEntity,
      this.isSelected = false,
      this.onTap});

  SubscriptionResponseEntity subscriptionResponseEntity;
  bool isSelected = false;
  Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StepPageScreenCubit, StepPageScreenStates>(
      builder: (context, state) => InkWell(
        onTap: onTap,
        child: Card(
          elevation: 10,
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
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(color: redColor.withOpacity(0.2)),
                  child: CustomText(
                      text: 'خصم ${subscriptionResponseEntity.discount} %',
                      customTextStyle: RegularStyle(color: redColor)),
                ),
                SizedBox(height: 5.h,),

                CustomText(
                    text: subscriptionResponseEntity.term == 'Three terms'
                        ? "ثلاثة فصول دراسية"
                        : subscriptionResponseEntity.term == 'Two terms'
                            ? "فصلين دراسيين"
                            : "فصل دراسي",
                    customTextStyle:
                        RegularStyle(color: blackColor, fontSize: 16.sp)),
                SizedBox(height: 5.h,),
                CustomText(
                    text: subscriptionResponseEntity.period == "Six months"
                        ? "ستة اشهر"
                        : subscriptionResponseEntity.period == 'Three months'
                            ? "ثلاث اشهر"
                            : "اثنا عشر شهر",
                    customTextStyle:
                        RegularStyle(color: greenColor, fontSize: 16.sp)),
                SizedBox(height: 5.h,),
                CustomText(
                    text: '${subscriptionResponseEntity.price} درهم ',
                    customTextStyle: BoldStyle(color: blackColor,fontSize: 18.sp))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
