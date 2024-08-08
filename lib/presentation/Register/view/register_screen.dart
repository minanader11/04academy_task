import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:madrasa_task/core/utilities/CustomText.dart';
import 'package:madrasa_task/core/utilities/CustomTextStyle.dart';
import 'package:madrasa_task/core/utilities/app_colors.dart';
import 'package:madrasa_task/core/utilities/imageHelper.dart';
import 'package:madrasa_task/core/utilities/image_paths.dart';
import 'package:madrasa_task/core/widgets/custom_elevated_button.dart';
import 'package:madrasa_task/core/widgets/custom_text_field.dart';
import 'package:madrasa_task/generated/l10n.dart';
import 'package:madrasa_task/presentation/Register/view_model/register_cubit.dart';
import 'package:madrasa_task/presentation/stepPageWidget/StepPageScreen.dart';

class RegisterScreen extends StatelessWidget {
  var h = 812.h;
  var w = 375.w;

  @override
  Widget build(BuildContext context) {
    var registerCubit = BlocProvider.of<RegisterCubit>(context);
    return Scaffold(
      body: Container(
        height: h,
        width: w,
        padding: EdgeInsetsDirectional.only(top: 60.h, start: 10.w, end: 10.w),
        child: Form(
          key: registerCubit.formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CustomText(
                    text: '${S.current.newRegistration}',
                    customTextStyle:
                        BoldStyle(color: blackColor, fontSize: 24.sp)),
                SizedBox(
                  height: 10.h,
                ),
                CustomTextField(
                    hint: '${S.current.firstName}',
                    controller: registerCubit.firstNameController,
                    validator: (value) {}),
                SizedBox(
                  height: 10.h,
                ),
                CustomTextField(
                    hint: '${S.current.lastName}',
                    controller: registerCubit.familyNameController,
                    validator: (value) {}),
                SizedBox(
                  height: 10.h,
                ),
                CustomTextField(
                    hint: '${S.current.phoneNumber}',
                    controller: registerCubit.mobileNumberController,
                    validator: (value) {}),
                SizedBox(
                  height: 10.h,
                ),
                CustomTextField(
                    hint: '${S.current.emailAddress}',
                    controller: registerCubit.emailController,
                    validator: (value) {}),
                SizedBox(
                  height: 10.h,
                ),
                CustomTextField(
                    hint: '${S.current.password}',
                    controller: registerCubit.passwordController,
                    validator: (value) {}),
                SizedBox(
                  height: 10.h,
                ),
                CustomTextField(
                    hint: '${S.current.confPassword}',
                    controller: registerCubit.confirmPasswordController,
                    validator: (value) {}),
                SizedBox(
                  height: 20.h,
                ),
                CustomElevatedButton(
                    backGroundColor: greenColor,
                    child: CustomText(
                        text: '${S.current.newRegistration}',
                        customTextStyle:
                            RegularStyle(color: whiteColor, fontSize: 20.sp)),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => StepPageScreen(),));
                    }),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        // margin: EdgeInsets.only(right: 9.w),
                        color: greyColor,
                        //width: 138.w,
                        height: 1.h,
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    CustomText(
                        text: '${S.current.loginBy}',
                        customTextStyle: RegularStyle(color: greyColor)),
                    SizedBox(
                      width: 5.w,
                    ),
                    Expanded(
                      child: Container(
                        // margin: EdgeInsets.only(left: 9.w),
                        color: greyColor,
                        // width: 138.w,
                        height: 1.h,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                // CustomElevatedButton(
                //     backGroundColor: whiteColor,
                //     onPressed: () {},
                //     child: Row(
                //       children: [
                //         Icon(Icons.report_gmailerrorred),
                //         CustomText(
                //             text: 'Google',
                //             customTextStyle:
                //                 BoldStyle(color: blackColor, fontSize: 24.sp))
                //       ],
                //     )),
                Container(padding: EdgeInsetsDirectional.symmetric(vertical: 10.h),
                  decoration:
                      BoxDecoration(border: Border.all(color: greenColor,width: 2.w),borderRadius: BorderRadius.circular(6.r)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
            
                      CustomText(
                          text: 'Google',
                          customTextStyle:
                              BoldStyle(color: blackColor, fontSize: 24.sp)),
                      SizedBox(width: 10.w,),
                      // Icon(Icons.report_gmailerrorred),
                      ImageHelper(image: gmailImage, imageType: ImageType.svg,height: 20.h,width: 20.w,)
                    ],
                  ),
                ),
                SizedBox(height: 5.h,),
                Container(padding: EdgeInsetsDirectional.symmetric(vertical: 10.h),
                  decoration:
                  BoxDecoration(border: Border.all(color: greenColor,width: 2.w),borderRadius: BorderRadius.circular(6.r)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      CustomText(
                          text: 'Apple',
                          customTextStyle:
                          BoldStyle(color: blackColor, fontSize: 24.sp)),
                      SizedBox(width: 10.w,),
                      // Icon(Icons.report_gmailerrorred),
                      ImageHelper(image: appleImage, imageType: ImageType.svg,height: 20.h,width: 20.w,)
                    ],
                  ),
                ),
                SizedBox(height: 30.h,),
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
      ),
    );
  }
}
