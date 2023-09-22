part of 'onboarding_bloc.dart';
abstract class OnboardingState {}
class OnboardingData extends OnboardingState {
  List<OnBoardingModel>? listOnBoarding;
  OnboardingData(this.listOnBoarding);
}