class OnBoardingModel {
  final String  title, description;

  OnBoardingModel({
    required this.title,
    required this.description,
  });
}

// OnBoarding content list
final List<OnBoardingModel> onBoardingData = [
  OnBoardingModel(
    title: "Get ready to BINGE",
    description:
        "Find the best movies and TV shows to watch, all in one place.",
  ),
  OnBoardingModel(
    title: "the MULTIVERSE of",
    description:
        "Entertainment is yours for the taking.Explore the latest movies and TV shows from all over the world.",
  ),
  OnBoardingModel(
    title: "your IMAGINATION",
    description:
        "Find the perfect movie or TV show to watch, no matter what you're in the mood for.",
  ),
];
