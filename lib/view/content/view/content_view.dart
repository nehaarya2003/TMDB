import 'package:awesome_flutter_extensions/awesome_flutter_extensions.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../blocs/content_bloc.dart';

class ContentView extends StatelessWidget {
  const ContentView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ContentBloc(),
      child: _Content(),
    );
  }
}

class _Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/onboarding.png"),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          title: Text(
            "Trending",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          actions: [
            IconButton(icon: const Icon(Icons.settings), onPressed: () {})
          ],
        ),
        body: BlocBuilder<ContentBloc, ContentState>(
          builder: (context, contentState) {
            List<String> items = [
              'assets/images/onboarding.png',
              'assets/images/onboarding.png',
              'assets/images/onboarding.png',
              'assets/images/onboarding.png',
              'assets/images/onboarding.png',
              'assets/images/onboarding.png',
            ];

            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(children: [
                CarouselSlider(
                  options: CarouselOptions(
                    height: 300,
                    viewportFraction: 0.5,
                    enlargeCenterPage: true,
                  ),
                  items: items
                      .map((item) => SizedBox(
                            height: 300,
                            width: 200,
                            child: Card(
                              child: Image.asset(item, fit: BoxFit.cover),
                            ),
                          ))
                      .toList(),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text("Title", style: Theme.of(context).textTheme.displayMedium?.copyWith(color: Theme.of(context).colorScheme.onSurface)),
                const SizedBox(
                  height: 12,
                ),
                Text("Description",
                    style: Theme.of(context).textTheme.bodyLarge),
              ]),
            );
          },
        ),
        persistentFooterButtons: const [
          Row(children: [
            _Footer(
              mainImage: 'assets/images/movie.svg',
              heading: 'Movies',
              subHeading: '',
              background: true,
            ),
            _Footer(
              mainImage: 'assets/images/fav.svg',
              heading: 'Favourites',
              subHeading: '',
              background: false,
            )
          ])
        ],
      ),
    );
  }
}

class _Footer extends StatelessWidget {
  const _Footer(
      {super.key,
      required this.mainImage,
      required this.heading,
      required this.subHeading,
      required this.background});

  final String mainImage;
  final String heading;
  final String subHeading;
  final bool background;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: context.sizes.width * 0.45,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          decoration: background
              ? BoxDecoration(
                  color: Theme.of(context).colorScheme.secondaryContainer,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                )
              : null,
          child: SvgPicture.asset(
            mainImage,
            colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.onSecondaryContainer,
                BlendMode.srcIn),
            semanticsLabel: 'My SVG Image',
            height: 24,
            width: 24,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          heading,
          style: Theme.of(context).textTheme.labelMedium,
        ),
      ]),
    );
  }
}
