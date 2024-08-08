import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:madrasa_task/presentation/Register/ThirdStep/widgets/CustomSubjectContainer.dart';
import 'package:madrasa_task/presentation/Register/secondStep/widgets/CustomTextContainer.dart';
import 'package:madrasa_task/presentation/stepPageWidget/view_model/StepPageScreenCubit.dart';

class CustomGridViewForSubjects extends StatelessWidget {
  CustomGridViewForSubjects({super.key,required this.texts});
  List<String> texts;
  @override
  Widget build(BuildContext context) {
    var stepPageCubit=BlocProvider.of<StepPageScreenCubit>(context);
    return Wrap(runSpacing: 15.h,spacing:5.w,children: [
      CustomSubjectContainer(text: texts[0],onTap: () {
        stepPageCubit.changeSubjectIndex(0);
      },isSelected: stepPageCubit.selectedSubjectIndex==0,),
     // SizedBox(width: 5.w,),
      CustomSubjectContainer(text: texts[1],onTap: () {
        stepPageCubit.changeSubjectIndex(1);
      },isSelected: stepPageCubit.selectedSubjectIndex==1,),
     // SizedBox(width: 5.w,),
      CustomSubjectContainer(text: texts[2],onTap: () {
        stepPageCubit.changeSubjectIndex(2);
      },isSelected: stepPageCubit.selectedSubjectIndex==2,),
      //SizedBox(width: 5.w,),
      CustomSubjectContainer(text: texts[3],onTap: () {
        stepPageCubit.changeSubjectIndex(3);
      },isSelected: stepPageCubit.selectedSubjectIndex==3,),
      CustomSubjectContainer(text: texts[4],onTap: () {
        stepPageCubit.changeSubjectIndex(4);
      },isSelected: stepPageCubit.selectedSubjectIndex==4,),
      //SizedBox(width: 5.w,),
      CustomSubjectContainer(text: texts[5],onTap: () {
        stepPageCubit.changeSubjectIndex(5);
      },isSelected: stepPageCubit.selectedSubjectIndex==5,),
    //  SizedBox(width: 5.w,),
      CustomSubjectContainer(text: texts[6],onTap: () {
        stepPageCubit.changeSubjectIndex(6);
      },isSelected: stepPageCubit.selectedSubjectIndex==6,),
      CustomSubjectContainer(text: texts[7],onTap: () {
        stepPageCubit.changeSubjectIndex(7);
      },isSelected: stepPageCubit.selectedSubjectIndex==7,),
     // SizedBox(width: 5.w,),
      CustomSubjectContainer(text: texts[8],onTap: () {
        stepPageCubit.changeSubjectIndex(8);
      },isSelected: stepPageCubit.selectedSubjectIndex==8,),
    ],);
  }
}