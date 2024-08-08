import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:madrasa_task/presentation/Register/secondStep/widgets/CustomTextContainer.dart';
import 'package:madrasa_task/presentation/stepPageWidget/view_model/StepPageScreenCubit.dart';

class CustomGridViewForCurriculumTexts extends StatelessWidget {
  CustomGridViewForCurriculumTexts({super.key,required this.texts});
  List<String> texts;
  @override
  Widget build(BuildContext context) {
    var stepPageCubit=BlocProvider.of<StepPageScreenCubit>(context);
    return Column(children: [
      Row(children: [
        CustomTextContainer(text: texts[0],onTap: () {
          stepPageCubit.changeCurriculumIndexText(0);
        },isSelected: stepPageCubit.selectedCurriculum==0,),
        SizedBox(width: 20.w,),
        CustomTextContainer(text: texts[1],onTap: () {
          stepPageCubit.changeCurriculumIndexText(1);
        },isSelected: stepPageCubit.selectedCurriculum==1,),
      ],),
      SizedBox(height: 10.h,),
      Row(children: [
        CustomTextContainer(text: texts[2],onTap: () {
          stepPageCubit.changeCurriculumIndexText(2);
        },isSelected: stepPageCubit.selectedCurriculum==2,),
        SizedBox(width: 20.w,),
        CustomTextContainer(text: texts[3],onTap: () {
          stepPageCubit.changeCurriculumIndexText(3);
        },isSelected: stepPageCubit.selectedCurriculum==3,),
      ],)
    ],);
  }
}