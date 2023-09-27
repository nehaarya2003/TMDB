import 'package:awesome_flutter_extensions/awesome_flutter_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:sample/view/auth/blocs/auth_bloc.dart';
import 'package:sample/view/fav/blocs/fav_bloc.dart';

class FavView extends StatelessWidget {
  const FavView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => FavBloc(),
      child: _Fav(),
    );
  }
}

class _Fav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Favourites",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        actions: [
          IconButton(icon: const Icon(Icons.settings), onPressed: () {})
        ],
      ),
      body: BlocBuilder<FavBloc, FavState>(
        builder: (context, contentState) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: _FavTuple(image: 'assets/images/auth.png',heading: 'Barbie',subHeading: 'descrip')
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

class _FavTuple extends StatelessWidget {
  const _FavTuple({
    super.key,
    required this.image,
    required this.heading,
    required this.subHeading,
  });

  final String image;
  final String heading;
  final String subHeading;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: context.sizes.width * 0.45,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondaryContainer,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: Row(children: [
              Image.asset(
                image,
                height: 56,
                width: 56,
              ),
              const Column(children: [Text("title"), Text('description')]),
              SvgPicture.asset(
                'assets/images/play.svg',
                semanticsLabel: 'My SVG Image',
                height: 24,
                width: 24,
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
