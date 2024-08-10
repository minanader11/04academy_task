import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:madrasa_task/presentation/Register/secondStep/widgets/CustomTextContainer.dart';
import 'package:madrasa_task/presentation/stepPageWidget/view_model/StepPageScreenCubit.dart';

class CustomGridViewForEducationalTexts extends StatelessWidget {
 CustomGridViewForEducationalTexts({super.key,required this.texts});
 List<String> texts;
  @override
  Widget build(BuildContext context) {
    var stepPageCubit=BlocProvider.of<StepPageScreenCubit>(context);
    // return Column(children: [
    //   Row(children: [
    //     CustomTextContainer(text: texts[0],onTap: () {
    //       stepPageCubit.changeEducationalIndexText(0);
    //     },isSelected: stepPageCubit.selectedEducationalLevel==0,),
    //     SizedBox(width: 20.w,),
    //     CustomTextContainer(text: texts[1],onTap: () {
    //       stepPageCubit.changeEducationalIndexText(1);
    //     },isSelected: stepPageCubit.selectedEducationalLevel==1,),
    //   ],),
    //   SizedBox(height: 10.h,),
    //   Row(children: [
    //     CustomTextContainer(text: texts[2],onTap: () {
    //       stepPageCubit.changeEducationalIndexText(2);
    //     },isSelected: stepPageCubit.selectedEducationalLevel==2,),
    //     SizedBox(width: 20.w,),
    //     CustomTextContainer(text: texts[3],onTap: () {
    //       stepPageCubit.changeEducationalIndexText(3);
    //     },isSelected: stepPageCubit.selectedEducationalLevel==3,),
    //   ],)
    // ],);
    return Wrap(runSpacing: 8.h,children: [
      for(int i = 0 ;i<texts.length;i++) ...[
    CustomTextContainer(text: texts[i],onTap: () {
          stepPageCubit.changeEducationalIndexText(i);
        },isSelected: stepPageCubit.selectedEducationalLevel==i,),
        SizedBox(width: 20.w,),
      ]
    ],);
  }
}
