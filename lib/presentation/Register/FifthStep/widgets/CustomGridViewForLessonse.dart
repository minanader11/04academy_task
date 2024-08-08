import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:madrasa_task/presentation/Register/secondStep/widgets/CustomTextContainer.dart';
import 'package:madrasa_task/presentation/stepPageWidget/view_model/StepPageScreenCubit.dart';

class CustomGridViewForLessons extends StatelessWidget {
  CustomGridViewForLessons({super.key,required this.texts});
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
      CustomTextContainer(text: texts[0],onTap: () {
        stepPageCubit.changeLessonIndex(0);
      },isSelected: stepPageCubit.selectedLessonIndex==0,),
      SizedBox(width: 5.w,),
      CustomTextContainer(text: texts[1],onTap: () {
        stepPageCubit.changeLessonIndex(1);
      },isSelected: stepPageCubit.selectedLessonIndex==1,),

    ] );
  }
}