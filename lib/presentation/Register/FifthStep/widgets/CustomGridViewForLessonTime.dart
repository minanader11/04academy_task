import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:madrasa_task/presentation/Register/secondStep/widgets/CustomTextContainer.dart';
import 'package:madrasa_task/presentation/stepPageWidget/view_model/StepPageScreenCubit.dart';

class CustomGridViewForLessonTime extends StatelessWidget {
  CustomGridViewForLessonTime({super.key,required this.texts});
  List<String> texts;
  @override
  Widget build(BuildContext context) {
    var stepPageCubit=BlocProvider.of<StepPageScreenCubit>(context);
    // return Column(children: [
    //   Row(children: [
    //     CustomTextContainer(text: texts[0],onTap: () {
    //       stepPageCubit.changeClassRoomIndexText(0);
    //     },isSelected: stepPageCubit.selectedClassRoom==0,),
    //     SizedBox(width: 20.w,),
    //     CustomTextContainer(text: texts[1],onTap: () {
    //       stepPageCubit.changeClassRoomIndexText(1);
    //     },isSelected: stepPageCubit.selectedClassRoom==1,),
    //   ],),
    //   SizedBox(height: 10.h,),
    //   Row(children: [
    //     CustomTextContainer(text: texts[2],onTap: () {
    //       stepPageCubit.changeClassRoomIndexText(2);
    //     },isSelected: stepPageCubit.selectedClassRoom==2,),
    //     SizedBox(width: 20.w,),
    //     CustomTextContainer(text: texts[3],onTap: () {
    //       stepPageCubit.changeClassRoomIndexText(3);
    //     },isSelected: stepPageCubit.selectedClassRoom==3,),
    //   ],)
    // ],);
    return Wrap(runSpacing: 8.h,children:[
      for(int i = 0 ;i<texts.length;i++)...[
        CustomTextContainer(text: texts[i],onTap: () {
          stepPageCubit.changeSingleLessonTimeIndex(i);
        },isSelected: stepPageCubit.selectedSingleLessonPeriodIndex==i,),
        SizedBox(width: 5.w,),
      ]
      // CustomTextContainer(text: texts[0],onTap: () {
      //   stepPageCubit.changeLessonTimeIndex(0);
      // },isSelected: stepPageCubit.selectedLessonTimeIndex==0,),
      // SizedBox(width: 5.w,),
      // CustomTextContainer(text: texts[1],onTap: () {
      //   stepPageCubit.changeLessonTimeIndex(1);
      // },isSelected: stepPageCubit.selectedLessonTimeIndex==1,),
      // SizedBox(width:5.w),
      // CustomTextContainer(text: texts[2],onTap: () {
      //   stepPageCubit.changeLessonTimeIndex(2);
      // },isSelected: stepPageCubit.selectedLessonTimeIndex==2,),
      // SizedBox(width: 5.w,),
      // CustomTextContainer(text: texts[3],onTap: () {
      //   stepPageCubit.changeLessonTimeIndex(3);
      // },isSelected: stepPageCubit.selectedLessonTimeIndex==3,),
      // SizedBox(width:5.w),
      // CustomTextContainer(text: texts[4],onTap: () {
      //   stepPageCubit.changeLessonTimeIndex(4);
      // },isSelected: stepPageCubit.selectedLessonTimeIndex==4,),


    ] );
  }
}