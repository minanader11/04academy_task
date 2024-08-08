abstract class StepPageScreenStates{}
class StepPageScreenInitialState extends StepPageScreenStates{}
class ChangeTabIndexState extends StepPageScreenStates{}
class ChangeIndexOfSelectedTexts extends StepPageScreenStates{}
class GetSubjectsLoadingState extends StepPageScreenStates{}
class GetSubjectsSuccessState extends StepPageScreenStates{}
class GetSubjectsFailureState extends StepPageScreenStates{
  String errMsg;
  GetSubjectsFailureState({required this.errMsg});
}
class ChangeIndexOfSelectedSubject extends StepPageScreenStates{}
