import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:madrasa_task/core/utilities/CustomText.dart';
import 'package:madrasa_task/core/utilities/CustomTextStyle.dart';
import 'package:madrasa_task/core/utilities/app_colors.dart';
import 'package:madrasa_task/core/widgets/custom_text_field.dart';
import 'package:madrasa_task/generated/l10n.dart';

class FirstStepScreen extends StatelessWidget {
  FirstStepScreen({super.key});

  var h = 812.h;
  var w = 375.w;

  @override
  Widget build(BuildContext context) {
    return Column(
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
                    text: '${S.current.weAreHere}',
                    customTextStyle:
                        RegularStyle(color: greyColor, fontSize: 18.sp)),
              ),
            ],
          ),
        ),
        SizedBox(height: 10.h,),
        CustomTextField(suffixIcon: true,icon: Icon(Icons.date_range,color: greyColor,),
            hint: '${S.current.birthDate}',
            controller: TextEditingController(),
            validator: (string) {}),
        // Container(width: w,
        //   child: DropdownButton<String>(
        //    // value: 'currentValue',
        //     onChanged: (value) {
        //
        //     },
        //     items: [DropdownMenuItem<String>(
        //         //value: 'currentValue',
        //         child: Text('mina'),
        //       )]
        //
        //   ),
        // ),
        // DropdownButton<String>(
        //    // value: 'currentValue',
        //     onChanged: (value) {
        //
        //     },
        //     items: [DropdownMenuItem<String>(
        //      // value: '',
        //       child: Text(''),
        //     )]
        //
        // ),
        SizedBox(
          height: 10.h,
        ),
        Container(
          padding: EdgeInsetsDirectional.only(start: 16.w,end: 16.w),
          height: 60.h,
          decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              border: Border.all(color: greyColor, width: 2)),
          child: Center(
            child: DropdownButton<String>(dropdownColor: whiteColor,
              icon: Icon(Icons.keyboard_arrow_down),
              underline: const SizedBox(),
              isExpanded: true,
              value: 'ذكر',
              items: ['ذكر', 'انثي']
                  .map(
                    (e) => DropdownMenuItem<String>(
                        value: e,
                        child: CustomText(
                            text: e,
                            customTextStyle: RegularStyle(
                                color: greyColor, fontSize: 20.sp))),
                  )
                  .toList(),
              onChanged: (value) {
                // viewModel.selectedBrand = value!;
                //viewModel.changeGradeItem(value!);
              },
              itemHeight: 50,
            ),

          ),
        ),
        SizedBox(height: 10.h,),
        Container(
          padding: EdgeInsetsDirectional.only(start: 16.w,end: 16.w),
          height: 60.h,
          decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              border: Border.all(color: greyColor, width: 2)),
          child: Center(
            child: DropdownButton<String>(dropdownColor: whiteColor,
              icon: Icon(Icons.keyboard_arrow_down),
              underline: const SizedBox(),
              isExpanded: true,
              value: 'مصري',

              items: ['اجنبي', 'مصري']
                  .map(
                    (e) => DropdownMenuItem<String>(
                    value: e,
                    child: CustomText(
                        text: e,
                        customTextStyle: RegularStyle(
                            color: greyColor, fontSize: 20.sp))),
              )
                  .toList(),
              onChanged: (value) {
                // viewModel.selectedBrand = value!;
                //viewModel.changeGradeItem(value!);
              },
              itemHeight: 50,
            ),

          ),
        ),
        SizedBox(height: 10.h,),
        CustomTextField(suffixIcon: false,
            hint: '${S.current.doYouFace}',
            controller: TextEditingController(),
            validator: (string) {}),
        SizedBox(height: 10.h,),
        CustomTextField(suffixIcon: false,maxLines: 3,
            hint: '',
            controller: TextEditingController(),
            validator: (string) {}),
      ],
    );
  }
}
