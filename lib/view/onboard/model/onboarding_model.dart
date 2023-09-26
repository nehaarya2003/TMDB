import 'dart:ui';

import '../../../core/init/theme/light/color_scheme_light.dart';

class OnBoardingModel {
  final String description;
  final List<OnBoardingTitle> titles;

  OnBoardingModel({
    required this.titles,
    required this.description,
  });
}

class OnBoardingTitle {
  final String titleText;
  final Color titleColor;

  OnBoardingTitle({required this.titleText, required this.titleColor});
}

// OnBoarding content list
final List<OnBoardingModel> onBoardingData = [
  OnBoardingModel(
    // title: "Get ready to BINGE",
    titles: [
      OnBoardingTitle(titleText: "Get ready to", titleColor: ColorSchemeLight.onSurface),
      OnBoardingTitle(titleText: " BINGE", titleColor: ColorSchemeLight.primary)
    ],
    description:
        "Find the best movies and TV shows to watch, all in one place.",
  ),
  OnBoardingModel(
    titles: [
      OnBoardingTitle(titleText: "the", titleColor: ColorSchemeLight.onSurface),
      OnBoardingTitle(titleText: " MULTIVERSE", titleColor: ColorSchemeLight.primary),
      OnBoardingTitle(titleText: " of", titleColor: ColorSchemeLight.onSurface),
    ],
    description:
        "Entertainment is yours for the taking.Explore the latest movies and TV shows from all over the world.",
  ),
  OnBoardingModel(
    titles: [
      OnBoardingTitle(titleText: "your", titleColor: ColorSchemeLight.onSurface),
      OnBoardingTitle(titleText: " IMAGINATION", titleColor: ColorSchemeLight.primary)
    ],
    description:
        "Find the perfect movie or TV show to watch, no matter what you're in the mood for.",
  ),
];
