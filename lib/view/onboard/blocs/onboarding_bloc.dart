import 'package:flutter_bloc/flutter_bloc.dart';

import '../model/onboarding_model.dart';

part 'onboarding_event.dart';

part 'onboarding_state.dart';

String? sfEmail;
String? sfPassword;

class OnBoardingBloc extends Bloc<OnBoardingEvent, OnboardingState> {
  OnBoardingBloc() : super(OnboardingData(onBoardingData)) {
    on((event, emit) async {
      emit(OnboardingData(onBoardingData));
    });
  }
}
