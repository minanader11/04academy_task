
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:madrasa_task/domain/entities/MaterialResponse.dart';
import 'package:madrasa_task/domain/use_cases/getSubjectsUseCase.dart';
import 'package:madrasa_task/presentation/Register/FirstStep/FirstStepScreen.dart';
import 'package:madrasa_task/presentation/Register/FourthStep/FourthStepScreen.dart';
import 'package:madrasa_task/presentation/Register/ThirdStep/ThirdStepScreen.dart';
import 'package:madrasa_task/presentation/Register/secondStep/SecondStepScreen.dart';
import 'package:madrasa_task/presentation/stepPageWidget/view_model/StepPageScreenStates.dart';

class StepPageScreenCubit extends Cubit<StepPageScreenStates>{
  StepPageScreenCubit({required this.getSubjectsUseCase}):super(StepPageScreenInitialState());

List<Widget> tabs=[FirstStepScreen(),SecondStepScreen(),Thirdstepscreen(),FourthStepScreen()];
int tabIndex=0;
int selectedEducationalLevel=-1;
int selectedClassRoom=-1;
int selectedCurriculum=-1;
int selectedSubjectIndex=-1;
int selectedDayIndex=-1;
int selectedPeriodIndex=-1;
int selectedTimeIndex=-1;
GetSubjectsUseCase getSubjectsUseCase;
List<MaterialResponseEntity>subjects=[];
  void increaseTabIndex(){
  emit(StepPageScreenInitialState());
  tabIndex++;
  emit(ChangeTabIndexState());
}
  void decreaseTabIndex(){
    emit(StepPageScreenInitialState());
    tabIndex--;
    emit(ChangeTabIndexState());
  }
  void changeEducationalIndexText(int index){
    emit(StepPageScreenInitialState());
    selectedEducationalLevel=index;
    emit(ChangeIndexOfSelectedTexts());
  }
  void changeClassRoomIndexText(int index){
    emit(StepPageScreenInitialState());
    selectedClassRoom=index;
    emit(ChangeIndexOfSelectedTexts());
  }
  void changeCurriculumIndexText(int index){
    emit(StepPageScreenInitialState());
    selectedCurriculum=index;
    emit(ChangeIndexOfSelectedTexts());
  }
  void getSubjects()async{
    emit(GetSubjectsLoadingState());
    var response = await getSubjectsUseCase.invoke();
    response.fold((l) {
      print('failuer');
      emit(GetSubjectsFailureState(errMsg: l.errMsg));
    }, (r) {
      subjects=r;
     // print(subjects[0].englishData);
      emit(GetSubjectsSuccessState());
    },);
  }
  void changeSubjectIndex(int index){
    emit(StepPageScreenInitialState());
    selectedSubjectIndex=index;
    emit(ChangeIndexOfSelectedSubject());
  }
  void changeDayIndex(int index){
    emit(StepPageScreenInitialState());
    selectedDayIndex=index;
    emit(ChangeIndexOfSelectedTexts());
  }
  void changePeriodIndex(int index){
    emit(StepPageScreenInitialState());
    selectedPeriodIndex=index;
    emit(ChangeIndexOfSelectedTexts());
  }
  void changeTimeIndex(int index){
    emit(StepPageScreenInitialState());
    selectedTimeIndex=index;
    emit(ChangeIndexOfSelectedTexts());
  }

}