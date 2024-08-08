import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:madrasa_task/presentation/Register/secondStep/widgets/CustomTextContainer.dart';
import 'package:madrasa_task/presentation/stepPageWidget/view_model/StepPageScreenCubit.dart';

class CustomGridViewForTime extends StatelessWidget {
  CustomGridViewForTime({super.key,required this.texts});
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
        stepPageCubit.changeTimeIndex(0);
      },isSelected: stepPageCubit.selectedTimeIndex==0,),
      SizedBox(width: 5.w,),
      CustomTextContainer(text: texts[1],onTap: () {
        stepPageCubit.changeTimeIndex(1);
      },isSelected: stepPageCubit.selectedTimeIndex==1,),
      SizedBox(width:5.w),
      CustomTextContainer(text: texts[2],onTap: () {
        stepPageCubit.changeTimeIndex(2);
      },isSelected: stepPageCubit.selectedTimeIndex==2,),
      SizedBox(width: 5.w,),
      CustomTextContainer(text: texts[3],onTap: () {
        stepPageCubit.changeTimeIndex(3);
      },isSelected: stepPageCubit.selectedTimeIndex==3,),
      SizedBox(width:5.w),
      CustomTextContainer(text: texts[4],onTap: () {
        stepPageCubit.changeTimeIndex(4);
      },isSelected: stepPageCubit.selectedTimeIndex==4,),


    ] );
  }
}