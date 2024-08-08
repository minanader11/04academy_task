import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:madrasa_task/presentation/OnBoarding/view_model/OnBoardingScreenStates.dart';

class OnBoardingScreenCubit extends Cubit<OnBoardingScreenStates>{

  OnBoardingScreenCubit(): super(OnBoardingScreenInitialState());
  int selectedIndex=-1;
  void changeTypeState(int index){
    emit(ChangePersonTypeInitialState());
    selectedIndex=index;
   emit(ChangePersonTypeState());
  }
}