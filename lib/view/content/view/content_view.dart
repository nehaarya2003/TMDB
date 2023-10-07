import 'package:awesome_flutter_extensions/awesome_flutter_extensions.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../core/constants/app_contants.dart';
import '../blocs/content_bloc.dart';

class ContentView extends StatelessWidget {
  const ContentView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ContentBloc()..add(const ContentEvent.authenticateApp()),
      child: _Content(),
    );
  }
}

class _Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: BlocBuilder<ContentBloc, ContentState>(
        builder: (context, contentState) {
          if (contentState.isLoading == true) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://image.tmdb.org/t/p/w500/${contentState.movieResponse?.results.elementAt(contentState.index).poster_path}'),
                    fit: BoxFit.cover,
                    opacity: 0.5),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.symmetric(vertical: 10),
                   child: Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const SizedBox(width: 20,),
                        Text(
                          "Trending",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        IconButton(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                            icon: const Icon(Icons.settings),
                            onPressed: () {
                              context.pushNamed('settings');
                            }),

                      ],
                    ),
                    ),
                   const SizedBox(height: 20,),
                   // Column(children: [
                      CarouselSlider.builder(
                        options: CarouselOptions(
                          height: 300,
                          onPageChanged: (index, reason) {
                            BlocProvider.of<ContentBloc>(context)
                                .add(ContentEvent.indexChanged(index));
                          },
                          viewportFraction: 0.5,
                          enlargeCenterPage: true,
                        ),
                        itemCount: contentState.movieResponse?.results.length,
                        itemBuilder: (BuildContext context, int itemIndex,
                                int pageViewIndex) =>
                            GestureDetector(
                          onTap: () {
                            context.pushNamed('details',
                                extra: contentState.movieResponse?.results
                                    .elementAt(itemIndex)
                                    .id
                                    .toString());
                          },
                          child: SizedBox(
                            height: 300,
                            width: 200,
                            child: Card(
                              color: Theme.of(context).colorScheme.background,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  //set border radius more than 50% of height and width to make circle
                                ),

                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12.0),
                                  child: FadeInImage(
                                    image: NetworkImage(
                                        'https://image.tmdb.org/t/p/w500/${contentState.movieResponse?.results.elementAt(itemIndex).poster_path}',
                                        headers: {
                                          'accept': 'application/json',
                                          'Authorization':
                                              'Bearer 65a62eb3d9b8c21b9ff004407bd6d027'
                                        }),
                                    placeholder:
                                        AssetImage('assets/images/auth.png'),
                                    fit: BoxFit.cover,
                                  )),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        child: Text(
                          contentState.movieResponse?.results
                                  .elementAt(contentState.index)
                                  .original_title ??
                              '',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium
                              ?.copyWith(
                                  color:
                                      Theme.of(context).colorScheme.onSurface),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: Text(
                              contentState.movieResponse?.results
                                      .elementAt(contentState.index)
                                      .overview ??
                                  '',
                              textAlign: TextAlign.justify,
                              style: Theme.of(context).textTheme.bodyLarge),
                        ),
                      ),
                   // ]),
                  ],
                ),
              ),
            );
          }
        },
      ),
      persistentFooterButtons: [
        Row(children: [
          _Footer(
            mainImage: 'assets/images/movie.svg',
            heading: 'Movies',
            subHeading: '',
            background: true,
            voidCallback: () {},
          ),
          _Footer(
              mainImage: 'assets/images/fav.svg',
              heading: 'Favourites',
              subHeading: '',
              background: false,
              voidCallback: () {
                context.pushNamed('fav');
              }),
        ])
      ],
    );
  }
}

class _Footer extends StatelessWidget {
  const _Footer(
      {super.key,
      required this.mainImage,
      required this.heading,
      required this.subHeading,
      required this.background,
      required this.voidCallback});

  final String mainImage;
  final String heading;
  final String subHeading;
  final bool background;
  final VoidCallback voidCallback;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: voidCallback,
      child: SizedBox(
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
      ),
    );
  }
}
