import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:madrasa_task/core/utilities/CustomText.dart';
import 'package:madrasa_task/core/utilities/CustomTextStyle.dart';
import 'package:madrasa_task/core/utilities/app_colors.dart';
import 'package:madrasa_task/generated/l10n.dart';
import 'package:madrasa_task/presentation/Register/ThirdStep/widgets/CustomGridViewForSubjects.dart';
import 'package:madrasa_task/presentation/Register/ThirdStep/widgets/CustomSubjectContainer.dart';
import 'package:madrasa_task/presentation/stepPageWidget/view_model/StepPageScreenCubit.dart';
import 'package:madrasa_task/presentation/stepPageWidget/view_model/StepPageScreenStates.dart';

class Thirdstepscreen extends StatelessWidget {
  Thirdstepscreen({super.key});

  var h = 812.h;
  var w = 375.w;

  @override
  Widget build(BuildContext context) {
    var stepPageCubit = BlocProvider.of<StepPageScreenCubit>(context);
    return BlocBuilder<StepPageScreenCubit, StepPageScreenStates>(
      builder: (context, state) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IntrinsicHeight(
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: greenColor,
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
                      text: '${S.current.chooseTheStudySubjects}',
                      customTextStyle:
                          RegularStyle(color: greyColor, fontSize: 18.sp)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          CustomText(
              text: 'حدد  المواد التي ترغب في دراساتها',
              customTextStyle:
                  RegularStyle(color: blackColor, fontSize: 20.sp)),
          SizedBox(
            height: 10.h,
          ),
          //CustomGridViewForSubjects(texts: stepPageCubit.subjects.map((e) => e.englishData!,).toList()),
          //CustomTextContainer(text: 'رياض الاطفال')
          Container(
            width: w,
            height: 500.h,
            child: IntrinsicHeight(
              child: GridView.builder(
                padding: EdgeInsets.zero,
                itemCount: stepPageCubit.subjects.length,
                scrollDirection: Axis.vertical,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                    childAspectRatio: 100.w / 50.h,
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return CustomSubjectContainer(
                    text: stepPageCubit.subjects[index].englishData!,
                    onTap: () {if(stepPageCubit.selectedSubjectIndex==index){
                      stepPageCubit.changeSubjectIndex(-1);
                    } else{
                      stepPageCubit.changeSubjectIndex(index);}
                    },isSelected: stepPageCubit.selectedSubjectIndex==index,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
