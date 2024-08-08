import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:madrasa_task/core/utilities/CustomText.dart';
import 'package:madrasa_task/core/utilities/CustomTextStyle.dart';
import 'package:madrasa_task/core/utilities/ViewHelper.dart';
import 'package:madrasa_task/core/utilities/app_colors.dart';
import 'package:madrasa_task/core/utilities/imageHelper.dart';
import 'package:madrasa_task/core/utilities/image_paths.dart';
import 'package:madrasa_task/core/widgets/custom_elevated_button.dart';
import 'package:madrasa_task/generated/l10n.dart';
import 'package:madrasa_task/presentation/OnBoarding/view_model/OnBoardingScreenStates.dart';
import 'package:madrasa_task/presentation/OnBoarding/view_model/OnBoardingScreen_cubit.dart';

class OnBoardingScreen extends StatelessWidget {
  static const String routeName = 'OnBoardingScreen';
  var h = 812.h;
  var w = 375.w;

  @override
  Widget build(BuildContext context) {
    var onBoardingCubit = BlocProvider.of<OnBoardingScreenCubit>(context);
    return BlocConsumer<OnBoardingScreenCubit, OnBoardingScreenStates>(
      listener: (context, state) {},
      builder: (context, state) => Scaffold(
        body: Container(
          height: h,
          width: w,
          padding:
              EdgeInsetsDirectional.only(top: 150.h, start: 10.w, end: 10.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomText(
                  text: '${S.current.newRegistration}',
                  customTextStyle:
                      BoldStyle(color: blackColor, fontSize: 24.sp)),
              SizedBox(
                height: 10.h,
              ),
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
                          text: '${S.current.areYou}',
                          customTextStyle:
                              RegularStyle(color: greyColor, fontSize: 18.sp)),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      if (onBoardingCubit.selectedIndex == 0) {
                        onBoardingCubit.changeTypeState(-1);
                      } else {
                        onBoardingCubit.changeTypeState(0);
                      }
                    },
                    child: Column(
                      children: [
                        ImageHelper(
                          image: studentImage,
                          imageType: ImageType.asset,
                          height: 120.h,
                          width: 120.h,
                          imageShape: ImageShape.circle,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        onBoardingCubit.selectedIndex == 0
                            ? Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.check_circle_outline,
                                    color: greenColor,
                                  ),
                                  SizedBox(
                                    width: 3.w,
                                  ),
                                  CustomText(
                                      text: '${S.current.student}',
                                      customTextStyle: BoldStyle(
                                          fontSize: 20.sp, color: greenColor))
                                ],
                              )
                            : CustomText(
                                text: '${S.current.student}',
                                customTextStyle: BoldStyle(
                                    fontSize: 20.sp, color: blackColor))
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      if (onBoardingCubit.selectedIndex == 1) {
                        onBoardingCubit.changeTypeState(-1);
                      } else {
                        onBoardingCubit.changeTypeState(1);
                      }
                    },
                    child: Column(
                      children: [
                        ImageHelper(
                          image: familyImage,
                          imageType: ImageType.asset,
                          height: 120.h,
                          width: 120.h,
                          imageShape: ImageShape.circle,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        onBoardingCubit.selectedIndex == 1
                            ? Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.check_circle_outline,
                                    color: greenColor,
                                  ),
                                  SizedBox(
                                    width: 3.w,
                                  ),
                                  CustomText(
                                      text: '${S.current.parent}',
                                      customTextStyle: BoldStyle(
                                          fontSize: 20.sp, color: greenColor))
                                ],
                              )
                            : CustomText(
                                text: '${S.current.parent}',
                                customTextStyle: BoldStyle(
                                    fontSize: 20.sp, color: blackColor))
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              // ElevatedButton(
              //     style: ElevatedButton.styleFrom(backgroundColor: greenColor),
              //     onPressed: () {
              //       if(onBoardingCubit.selectedIndex==-1){
              //         ViewHelper(context).showSnakeBar(S
              //             .of(context)
              //             .selectUserType,snakeColorBackGround: redColor);
              //       } else{
              //        ViewHelper(context).openRegisterWidget();
              //       }
              //     },
              //     child: Padding(
              //       padding: EdgeInsets.symmetric(vertical: 10.h),
              //       child: CustomText(
              //           text: '${S.current.next}',
              //           customTextStyle:
              //               RegularStyle(color: whiteColor, fontSize: 20.sp)),
              //     )),
              CustomElevatedButton(
                  backGroundColor: greenColor,
                  child: CustomText(
                      text: '${S.current.next}',
                      customTextStyle:
                          RegularStyle(color: whiteColor, fontSize: 20.sp)),
                  onPressed: () {
                    if (onBoardingCubit.selectedIndex == -1) {
                      ViewHelper(context).showSnakeBar(
                          S.of(context).selectUserType,
                          snakeColorBackGround: redColor);
                    } else {
                      ViewHelper(context).openRegisterWidget();
                    }
                  }),
              Spacer(),
              Center(
                child: RichText(
                  text: TextSpan(
                    style: RegularStyle(color: greyColor, fontSize: 16.sp)
                        .getStyle(),
                    children: <TextSpan>[
                      TextSpan(text: '${S.current.doYouHaveAccount} '),
                      TextSpan(
                          text: '${S.current.signIn}',
                          style:
                              RegularStyle(color: greenColor, fontSize: 16.sp)
                                  .getStyle()),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
