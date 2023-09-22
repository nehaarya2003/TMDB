import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/onboarding_bloc.dart';

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

    return Scaffold(
      body: BlocBuilder<OnBoardingBloc, OnboardingState>(
        builder: (context, onBoardingState) {
          return buildList(onBoardingState, pageController);

          Text(
            '$onBoardingState',
            style: Theme.of(context).textTheme.displayLarge,
          );
        },
      ),
    );
  }
}

// OnBoarding area widget
class OnBoardContent extends StatelessWidget {
  OnBoardContent({
    super.key,
    required this.title,
    required this.description,
  });

  String title;
  String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          description,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
      ],
    );
  }
}

Widget buildList(
    OnboardingState onboardingState, PageController pageController) {
  if (onboardingState is OnboardingData) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        // Background gradient
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              Color(0xff1f005c),
              Color(0xff5b0060),
              Color(0xff870160),
              Color(0xffac255e),
              Color(0xffca485c),
              Color(0xffe16b5c),
              Color(0xfff39060),
              Color(0xffffb56b),
            ],
            tileMode: TileMode.mirror,
          ),
        ),
        child: Column(
          children: [
            // Carousel area
            Expanded(
              child: PageView.builder(
                onPageChanged: (index) {
                  // onBoardingBloc.setPageIndex(index);
                  /*setState(() {
                  _pageIndex = index;
                });*/
                },
                itemCount: onboardingState.listOnBoarding?.length,
                controller: pageController,
                itemBuilder: (context, index) => OnBoardContent(
                  title: onboardingState.listOnBoarding![index].title,
                  description:
                      onboardingState.listOnBoarding![index].description,
                ),
              ),
            ),
            // Indicator area
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(
                    onboardingState.listOnBoarding!.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: 4),
                      child: DotIndicator(
                        isActive: index == 0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Privacy policy area
            const Text("By proceeding you agree to our Privacy Policy"),
            // White space
            const SizedBox(
              height: 16,
            ),
            // Button area
            InkWell(
              onTap: () {
                print("Button clicked!");
              },
              child: Container(
                margin: const EdgeInsets.only(bottom: 48),
                height: 400 * 0.075,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    "Login / Registration",
                    style: TextStyle(
                      fontFamily: "HappyMonkey",
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  } else {
    return const Text("data");
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
