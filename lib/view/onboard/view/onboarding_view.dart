import 'package:awesome_flutter_extensions/awesome_flutter_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sample/view/onboard/blocs/onboarding/onboarding_bloc.dart';
import 'package:sample/view/onboard/blocs/pager/pager_bloc.dart';

import '../../../core/init/theme/light/color_scheme_light.dart';
import '../model/onboarding_model.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => OnBoardingBloc(),
      child: const OnBoardingView(),
    );
  }
}

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController(initialPage: 0);
    final screenHeight = context.sizes.height;

    return BlocProvider(
      create: (_) => OnPageNextBloc(),
      child: Scaffold(
        body: BlocBuilder<OnBoardingBloc, OnboardingState>(
          builder: (context, onBoardingState) {
            return buildList(
                onBoardingState, pageController, screenHeight, context);
          },
        ),
      ),
    );
  }
}

// OnBoarding area widget
class OnBoardContent extends StatelessWidget {
  OnBoardContent({
    super.key,
    required this.titles,
    required this.description,
  });

  List<OnBoardingTitle> titles;
  String description;

  @override
  Widget build(BuildContext context) {
    var titleSpans = titles
        .map((title) => TextSpan(
            text: title.titleText,
            style: Theme.of(context)
                .textTheme
                .headlineLarge
                ?.copyWith(color: title.titleColor)))
        .toList();
    titleSpans.removeAt(0);

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          RichText(
            text: TextSpan(
              text: titles.elementAt(0).titleText,
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge
                  ?.copyWith(color: titles.elementAt(0).titleColor),
              children: titleSpans,
            ),
          ),

          // Text(title, style: Theme.of(context).textTheme.headlineLarge),
          const SizedBox(
            height: 16,
          ),
          Text(
            description,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

Widget buildList(OnboardingState onboardingState, PageController pageController,
    double screenHeight, BuildContext buildContext) {
  if (onboardingState is OnboardingData) {
    return Scaffold(
      body: Container(
        color: Theme.of(buildContext).colorScheme.surface,
        child: BlocBuilder<OnPageNextBloc, OnPageChangeState>(
          builder: (context, onPageChangeState) {
            return Column(
              children: [
                // Privacy policy area
                Stack(children: [
                  Image.asset(
                    "assets/images/onboarding.png",
                    height: screenHeight * 0.6,
                    width: double.infinity,
                    fit: BoxFit.fill,
                    alignment: Alignment.center,
                  ),
                  Container(
                    height: screenHeight * 0.6,
                    width: double.maxFinite,
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("The",
                            style:
                                Theme.of(buildContext).textTheme.headlineSmall),
                        Text("TMDB",
                            style: Theme.of(buildContext)
                                .textTheme
                                .headlineMedium),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(90, 0, 0, 0),
                          //apply padding to LTRB, L:Left, T:Top, R:Right, B:Bottom
                          child: Text("App",
                              style: Theme.of(buildContext)
                                  .textTheme
                                  .headlineSmall),
                        ),
                      ],
                    ),
                  )
                ]),

                Expanded(
                  child: PageView.builder(
                    onPageChanged: (index) {
                      () => BlocProvider.of<OnPageNextBloc>(buildContext)
                          .add(MoveNextPage());
                    },
                    itemCount: onboardingState.listOnBoarding?.length,
                    controller: pageController,
                    itemBuilder: (context, index) => OnBoardContent(
                      titles: onboardingState.listOnBoarding![index].titles,
                      description:
                          onboardingState.listOnBoarding![index].description,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    BlocProvider.of<OnPageNextBloc>(buildContext)
                        .add(MoveNextPage());

                    pageController.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.linearToEaseOut);
                  },
                  child: getMoveNextWidget(onPageChangeState.currentIndex < 2),
                ),
              ],
            );
          },
        ),
      ),
    );
  } else {
    return const Text("data");
  }
}

Widget getMoveNextWidget(bool hasNextPage) {
  if (hasNextPage) {
    return const NextArrowWidget();
  } else {
    return const LetsGoWidget();
  }
}

class NextArrowWidget extends StatelessWidget {
  const NextArrowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 48),
      height: 100,
      width: 300,
      child: Center(
        child: Image.asset(
          "assets/images/rightArrow.png",
        ),
      ),
    );
  }
}

class LetsGoWidget extends StatelessWidget {
  const LetsGoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 48),
      height: 40,
      width: 120,
      child: ElevatedButton(
        onPressed: () => (context.goNamed('content')),
        style: ElevatedButton.styleFrom(
            backgroundColor: ColorSchemeLight.buttonBackground),
        // This is what you need!

        child: Text(
          " -> Lets Go",
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(color: ColorSchemeLight.black),
        ),
      ),
    );
  }
}

// Dot indicator widget
class DotIndicator extends StatelessWidget {
  const DotIndicator({
    this.isActive = false,
    super.key,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 8,
      width: isActive ? 24 : 8,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black),
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
      ),
    );
  }
}
