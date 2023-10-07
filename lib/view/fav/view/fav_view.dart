import 'package:awesome_flutter_extensions/awesome_flutter_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:sample/core/base/extension/either_ext.dart';
import 'package:sample/view/auth/blocs/auth_bloc.dart';
import 'package:sample/view/content/model/movie/movie_reponse_model.dart';
import 'package:sample/view/fav/blocs/fav_bloc.dart';

class FavView extends StatelessWidget {
  const FavView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => FavBloc()..add(const FavEvent.getFavList()),
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
          IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                context.pushNamed('settings');
              })
        ],
      ),
      body: BlocBuilder<FavBloc, FavState>(
        builder: (context, contentState) {
          if (contentState.isLoading == true) {
            return const Center(child: CircularProgressIndicator());
          } else if(contentState.authFailureOrSuccess?.isRight()==true){
            return ListView.builder(
              itemCount:
                  contentState.authFailureOrSuccess?.asRight()?.results.length,
              prototypeItem: ListTile(
                title: _FavTuple(
                    responseModel: contentState.authFailureOrSuccess
                        ?.asRight()!
                        .results
                        .first),
              ),
              itemBuilder: (context, index) {
                return ListTile(
                  title: _FavTuple(
                      responseModel: contentState.authFailureOrSuccess
                          ?.asRight()!
                          .results
                          .elementAt(index)),
                );
              },
            );
          }else{
            return    const SnackBar(
              content: Text('Something went wrong'),
            );
           //  return Container(child:ScaffoldMessenger.of(context).showSnackBar(snackBar));
          }
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
    required this.responseModel,
  });

  final MovieResponseModel? responseModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child:
          Container(
            padding: EdgeInsets.symmetric(vertical: 4),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondaryContainer,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
              child:FadeInImage(
                image: NetworkImage(
                    'https://image.tmdb.org/t/p/w500/${responseModel?.poster_path}',
                    headers: {
                      'accept': 'application/json',
                      'Authorization': 'Bearer 65a62eb3d9b8c21b9ff004407bd6d027'
                    }),
                placeholder: const AssetImage('assets/images/auth.png'),
                fit: BoxFit.cover,
                height: 56,
                width: 56,
              ),

                ),
              Container( width: context.sizes.width*.6,
                  child:
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Text(responseModel?.original_title ?? 'dsdff',overflow: TextOverflow.ellipsis,maxLines: 1,style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Theme.of(context).colorScheme.onSurface),),
                Text(responseModel?.overview ?? '',overflow: TextOverflow.ellipsis,maxLines: 1,style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),),
              ])),
              SvgPicture.asset(
                'assets/images/play.svg',
                semanticsLabel: 'My SVG Image',
                height: 24,
                width: 24,
              ),
            ]),
          ),

    );
  }
}
