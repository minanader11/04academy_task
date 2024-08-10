import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:madrasa_task/domain/entities/MaterialResponse.dart';
import 'package:madrasa_task/domain/entities/SubscriptionResponse.dart';
import 'package:madrasa_task/domain/use_cases/getSubjectsUseCase.dart';
import 'package:madrasa_task/domain/use_cases/getSubscriptionsUseCase.dart';
import 'package:madrasa_task/presentation/Register/FifthStep/FifthStepScreen.dart';
import 'package:madrasa_task/presentation/Register/FirstStep/FirstStepScreen.dart';
import 'package:madrasa_task/presentation/Register/FourthStep/FourthStepScreen.dart';
import 'package:madrasa_task/presentation/Register/SixthStep/SixthStepScreen.dart';
import 'package:madrasa_task/presentation/Register/ThirdStep/ThirdStepScreen.dart';
import 'package:madrasa_task/presentation/Register/secondStep/SecondStepScreen.dart';
import 'package:madrasa_task/presentation/Register/seventhStep/SeventhStepScreen.dart';
import 'package:madrasa_task/presentation/stepPageWidget/view_model/StepPageScreenStates.dart';

class StepPageScreenCubit extends Cubit<StepPageScreenStates> {
  StepPageScreenCubit(
      {required this.getSubjectsUseCase, required this.getSubscriptionsUseCase})
      : super(StepPageScreenInitialState());

  List<Widget> tabs = [
    FirstStepScreen(),
    SecondStepScreen(),
    Thirdstepscreen(),
    FourthStepScreen(),
    FifthStepScreen(),
    SixthStepScreen(),
    SeventhStepScreen()
  ];
  int tabIndex = 0;
  int selectedEducationalLevel = -1;
  int selectedClassRoom = -1;
  int selectedCurriculum = -1;
  int selectedSubjectIndex = -1;
  int selectedDayIndex = -1;
  int selectedPeriodIndex = -1;
  int selectedTimeIndex = -1;
  int selectedLessonIndex = -1;
  int selectedLessonTimeIndex = -1;
  int selectedSubscriptionIndex = -1;
  int selectedSingleLessonPeriodIndex=-1;
  GetSubjectsUseCase getSubjectsUseCase;
  GetSubscriptionsUseCase getSubscriptionsUseCase;
  List<MaterialResponseEntity> subjects = [];
  List<SubscriptionResponseEntity> subscriptions = [];
  ScrollController scrollController=ScrollController();
  var dateValue='';
  String selectedGender='ذكر';
  String selectedNationaltiy='مصري';
  void increaseTabIndex() {
    emit(StepPageScreenInitialState());
    tabIndex++;
    scrollController.jumpTo(0);
    emit(ChangeTabIndexState());
  }
  void changeGender(String gender){
    emit(StepPageScreenInitialState());
    selectedGender=gender;
    emit(ChangeDropDownValue());
  }

  void changeNationality(String nationality){
    emit(StepPageScreenInitialState());
    selectedNationaltiy=nationality;
    emit(ChangeDropDownValue());
  }
  void changeDate(context){

    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(DateTime.now().year-100),
        lastDate: DateTime(DateTime.now().year+100))
        .then((value) {
      emit(StepPageScreenInitialState());
       dateValue= value != null
           ? value.toString().split(' ').first
           : '';
      emit(ChangeDateState());
    });
    print(dateValue);

  }
  void decreaseTabIndex() {
    emit(StepPageScreenInitialState());
    tabIndex--;
    scrollController.jumpTo(0);
    emit(ChangeTabIndexState());
  }

  void changeEducationalIndexText(int index) {
    emit(StepPageScreenInitialState());

    selectedEducationalLevel = index;
    emit(ChangeIndexOfSelectedTexts());
  }

  void changeClassRoomIndexText(int index) {
    emit(StepPageScreenInitialState());
    selectedClassRoom = index;
    emit(ChangeIndexOfSelectedTexts());
  }

  void changeCurriculumIndexText(int index) {
    emit(StepPageScreenInitialState());
    selectedCurriculum = index;
    emit(ChangeIndexOfSelectedTexts());
  }

  void getSubjects() async {
    emit(GetSubjectsLoadingState());
    var response = await getSubjectsUseCase.invoke();
    response.fold(
      (l) {
        print('failuer');
        emit(GetSubjectsFailureState(errMsg: l.errMsg));
      },
      (r) {
        subjects = r;
        // print(subjects[0].englishData);
        emit(GetSubjectsSuccessState());
      },
    );
  }

  void changeSubjectIndex(int index) {
    emit(StepPageScreenInitialState());
    selectedSubjectIndex = index;
    emit(ChangeIndexOfSelectedSubject());
  }

  void changeDayIndex(int index) {
    emit(StepPageScreenInitialState());
    selectedDayIndex = index;
    emit(ChangeIndexOfSelectedTexts());
  }
  void changeSingleLessonTimeIndex(int index) {
    emit(StepPageScreenInitialState());
    selectedSingleLessonPeriodIndex = index;
    emit(ChangeIndexOfSelectedTexts());
  }

  void changePeriodIndex(int index) {
    emit(StepPageScreenInitialState());
    selectedPeriodIndex = index;
    emit(ChangeIndexOfSelectedTexts());
  }

  void changeTimeIndex(int index) {
    emit(StepPageScreenInitialState());
    selectedTimeIndex = index;
    emit(ChangeIndexOfSelectedTexts());
  }

  void changeLessonIndex(int index) {
    emit(StepPageScreenInitialState());
    selectedLessonIndex = index;
    emit(ChangeIndexOfSelectedTexts());
  }

  void changeLessonTimeIndex(int index) {
    emit(StepPageScreenInitialState());
    selectedLessonTimeIndex = index;
    emit(ChangeIndexOfSelectedTexts());
  }

  void changeSubscriptionIndex(int index) {
    emit(StepPageScreenInitialState());
    selectedSubscriptionIndex = index;
    emit(ChangeIndexOfSelectedTexts());
  }

  void getSubscriptions() async {
    emit(GetSubscriptionLoadingState());
    var response = await getSubscriptionsUseCase.invoke();
    response.fold(
      (l) {
        print('failuer');
        emit(GetSubscriptionFailureState(errMsg: l.errMsg));
      },
      (r) {
        subscriptions = r;
        // print(subjects[0].englishData);
        emit(GetSubscriptionSuccessState());
      },
    );
  }
}
