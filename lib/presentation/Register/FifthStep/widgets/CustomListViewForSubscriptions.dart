import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:madrasa_task/domain/entities/SubscriptionResponse.dart';
import 'package:madrasa_task/presentation/Register/FifthStep/widgets/CustomSubscriptionContainer.dart';
import 'package:madrasa_task/presentation/Register/secondStep/widgets/CustomTextContainer.dart';
import 'package:madrasa_task/presentation/stepPageWidget/view_model/StepPageScreenCubit.dart';

class CustomListViewForSubscritptions extends StatelessWidget {
  CustomListViewForSubscritptions({super.key, required this.subscriptions});

  List<SubscriptionResponseEntity> subscriptions;

  @override
  Widget build(BuildContext context) {
    var stepPageCubit = BlocProvider.of<StepPageScreenCubit>(context);
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
    return Padding(
      padding: EdgeInsetsDirectional.only(start: 10.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (int i = 0; i < subscriptions.length; i++) ...[
            CustomSubscriptionContainer(onTap: () {
              stepPageCubit.changeSubscriptionIndex(i);
            },
                isSelected: stepPageCubit.selectedSubscriptionIndex == i,
                subscriptionResponseEntity: subscriptions[i]),
            SizedBox(
              height: 10.h,
            ),
          ]
        ],
      ),
    );
  }
}
