import 'package:awesome_flutter_extensions/awesome_flutter_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sample/core/base/extension/either_ext.dart';
import 'package:sample/view/detail/blocs/detail_bloc.dart';

class DetailView extends StatelessWidget {
  const DetailView({super.key, required this.movieId});

  final String movieId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => DetailBloc()..add(DetailEvent.getMovieDetail(movieId)),
      child: _Details(movieId: movieId),
    );
  }
}

class _Details extends StatelessWidget {
  _Details({required this.movieId});

  final String movieId;

  var isFav = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        leading: const Icon(Icons.arrow_back_ios_sharp),
      ),
      body: Container(
        height: context.sizes.height,
        color: Theme.of(context).colorScheme.surface,
        child: BlocBuilder<DetailBloc, DetailState>(
            builder: (context, detailState) {
          if (detailState.isLoading == true) {
            return const Center(child: CircularProgressIndicator());
          } else if (detailState.favSuccessFailure?.isRight() == true) {
            return SnackBar(
              content: const Text('Hi, I am a SnackBar!'),
              backgroundColor: (Colors.black12),
              action: SnackBarAction(
                label: 'dismiss',
                onPressed: () {},
              ),
            );
          } else if (detailState.movieDetailFetchSuccessFailure?.isRight() ==
              true) {
            return SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    height: 225,
                    child: Card(
                      color: Theme.of(context).colorScheme.background,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        //set border radius more than 50% of height and width to make circle
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: FadeInImage(
                          height: 225,
                          width: 150,
                          image: NetworkImage(
                              'https://image.tmdb.org/t/p/w500/${detailState.movieDetailFetchSuccessFailure?.asRight()?.backdrop_path}',
                              headers: {
                                'accept': 'application/json',
                                'Authorization':
                                    'Bearer 65a62eb3d9b8c21b9ff004407bd6d027'
                              }),
                          placeholder:
                              const AssetImage('assets/images/auth.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 44,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(detailState.movieDetailFetchSuccessFailure
                                ?.asRight()
                                ?.original_title ??
                            "",style: Theme.of(context).textTheme.displaySmall?.copyWith(color: Theme.of(context).colorScheme.onSurface),),
                        GestureDetector(
                          onTap: () {
                            BlocProvider.of<DetailBloc>(context)
                                .add(DetailEvent.addToFav(movieId, isFav));
                          },
                          child: SvgPicture.asset(
                            'assets/images/detail_fav.svg',
                            height: 48,
                            width: 48,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),

                  SizedBox(
                    height: 30,
                    child: Text(detailState.movieDetailFetchSuccessFailure
                            ?.asRight()
                            ?.tagline ??
                        '',style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Theme.of(context).colorScheme.primary),),
                  ),
                  _DetailTuple(
                      title: 'Synopsis: ',
                      description: detailState.movieDetailFetchSuccessFailure
                              ?.asRight()
                              ?.overview ??
                          '',),
                  _DetailTuple(
                      title: 'Genres: : ',
                      description:
                          // final List<String> cityNames = cities.map((city) => city.name).toList();

                          detailState.movieDetailFetchSuccessFailure
                                  ?.asRight()
                                  ?.genres
                                  ?.map((e) => e.name)
                                  .toList()
                                  .join(',') ??
                              ''),
                  _DetailTuple(
                      title: 'Budget: ',
                      description: detailState.movieDetailFetchSuccessFailure
                              ?.asRight()
                              ?.budget
                              .toString() ??
                          ''),
                  _DetailTuple(
                      title: 'Revenue: ',
                      description: detailState.movieDetailFetchSuccessFailure
                              ?.asRight()
                              ?.revenue
                              .toString() ??
                          ''),
                  _DetailTuple(
                      title: 'Runtime: ',
                      description: detailState.movieDetailFetchSuccessFailure
                              ?.asRight()
                              ?.runtime
                              .toString() ??
                          ''),
                  _DetailTuple(
                      title: 'Rating: ',
                      description: detailState.movieDetailFetchSuccessFailure
                              ?.asRight()
                              ?.vote_average
                              .toString() ??
                          ''),
                ],
              ),
            );
          } else {
            return Text("data");
          }
        }),
      ),
    );
  }
}

class _DetailTuple extends StatelessWidget {
  const _DetailTuple({required this.description, required this.title});

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      width: context.sizes.width*.9,
      child: RichText(
        text: TextSpan(
          text: title,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Theme.of(context).colorScheme.primary),
          children: [
            TextSpan(
              text: description,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
          ],
        ),
      ),
    );
  }
}
