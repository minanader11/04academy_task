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
class GetSubscriptionLoadingState extends StepPageScreenStates{}
class GetSubscriptionSuccessState extends StepPageScreenStates{}
class GetSubscriptionFailureState extends StepPageScreenStates{
  String errMsg;
  GetSubscriptionFailureState({required this.errMsg});
}
class ChangeDateState extends StepPageScreenStates{}
class ChangeDropDownValue extends StepPageScreenStates{}