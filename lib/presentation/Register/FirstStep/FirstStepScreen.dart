import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:madrasa_task/core/utilities/CustomText.dart';
import 'package:madrasa_task/core/utilities/CustomTextStyle.dart';
import 'package:madrasa_task/core/utilities/app_colors.dart';
import 'package:madrasa_task/core/widgets/custom_drop_down_button.dart';
import 'package:madrasa_task/core/widgets/custom_text_field.dart';
import 'package:madrasa_task/generated/l10n.dart';
import 'package:madrasa_task/presentation/stepPageWidget/view_model/StepPageScreenCubit.dart';
import 'package:madrasa_task/presentation/stepPageWidget/view_model/StepPageScreenStates.dart';

class FirstStepScreen extends StatefulWidget {
  FirstStepScreen({super.key});

  @override
  State<FirstStepScreen> createState() => _FirstStepScreenState();
}

class _FirstStepScreenState extends State<FirstStepScreen> {
  var h = 812.h;

  var w = 375.w;

  @override
  Widget build(BuildContext context) {
    var stepPageCubit = BlocProvider.of<StepPageScreenCubit>(context);
    return BlocBuilder<StepPageScreenCubit, StepPageScreenStates>(
      builder: (context, state) => Column(
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
          SizedBox(
            height: 10.h,
          ),
          InkWell(
            onTap: () {
              stepPageCubit.changeDate(context);
              // String date=DateTime.now().toString();
              // showDatePicker(
              //     context: context,
              //     initialDate: DateTime.now(),
              //     firstDate: DateTime(DateTime.now().year-100),
              //     lastDate: DateTime(DateTime.now().year+100)).then((value) {
              //   setState(() {
              //     date = value != null?value.toString().split(' ').first:'';
              //     stepPageCubit.changeDate(date);
              //   });
              // });
            },
            child: Container(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 5.w),
              height: 60.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9.r),
                  border: Border.all(width: 2, color: greyColor)),
              child: Row(
                children: [
                  CustomText(
                      text: stepPageCubit.dateValue == ''
                          ? '${S.current.birthDate}'
                          : stepPageCubit.dateValue,
                      customTextStyle:
                          RegularStyle(color: greyColor, fontSize: 20.sp)),
                  Spacer(),
                  FittedBox(
                      child: Icon(
                    Icons.date_range,
                    color: greyColor,
                  ))
                ],
              ),
            ),
          ),
          // InkWell(onTap: () {
          //   print('mina');
          //   //stepPageCubit.changeDate(context);
          //   showDatePicker(
          //       context: context,
          //       initialDate: DateTime.now(),
          //       firstDate: DateTime(DateTime.now().year-100),
          //       lastDate: DateTime(DateTime.now().year+100))
          //       .then((value) {
          //       stepPageCubit.changeDate( value != null
          //               ? value.toString().split(' ').first
          //               : '');
          //       // dateValue = value != null
          //       //     ? value.toString().split(' ').first
          //       //     : '';
          //
          //   }
          //   );
          // },
          //   child: CustomTextField(readOnly: true,suffixIcon: true,icon: Icon(Icons.date_range,color: greyColor,),
          //       hint: stepPageCubit.dateValue==''?'${S.current.birthDate}':stepPageCubit.dateValue,
          //       controller: TextEditingController(),
          //       validator: (string) {}),
          // ),
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
            padding: EdgeInsetsDirectional.only(start: 16.w, end: 16.w),
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
              child: DropdownButton<String>(
                dropdownColor: whiteColor,
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
          // CustomDropdownButton(
          //   selectedValue: 'ذكر',
          //   //  items: [S.current.male, S.current.female],
          //   items: ['ذكر', 'انثي'],
          //   hintText: S.current.gender,
          //   hintStyle: RegularStyle(),
          //   onChanged: (newValue) {
          //
          //   },
          // ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            padding: EdgeInsetsDirectional.only(start: 16.w, end: 16.w),
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
              child: DropdownButton<String>(
                dropdownColor: whiteColor,
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
          SizedBox(
            height: 10.h,
          ),
          CustomTextField(
              suffixIcon: false,
              hint: '${S.current.doYouFace}',
              controller: TextEditingController(),
              validator: (string) {}),
          SizedBox(
            height: 10.h,
          ),
          CustomTextField(
              suffixIcon: false,
              maxLines: 3,
              hint: 'هل ترغب في تقديم اي ملاحظات اضافية',
              controller: TextEditingController(),
              validator: (string) {}),
        ],
      ),
    );
  }
}
