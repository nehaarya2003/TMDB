import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:sample/view/auth/blocs/auth_bloc.dart';
import 'package:sample/view/detail/blocs/detail_bloc.dart';

class DetailView extends StatelessWidget {
  const DetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => DetailBloc(),
      child: _Details(),
    );
  }
}

class _Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).colorScheme.surface,
        child: BlocBuilder<DetailBloc, DetailState>(
            builder: (context, onPageChangeState) {
          return Column(
            children: [
              Card(
                child: Image.asset('assets/images/auth.png'),
              ),
              Row(
                children: [
                  Text("data"),
                  SvgPicture.asset(
                    'assets/images/detail_fav.svg',
                    semanticsLabel: 'My SVG Image',
                    height: 24,
                    width: 24,
                  ),
                ],
              ),
              _DetailTuple(),
              _DetailTuple(),
              _DetailTuple(),
              _DetailTuple(),

            ],
          );
        }),
      ),
    );
  }
}

class _DetailTuple extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).colorScheme.surface,
        child:Row(
                children: [
                  Text("Title",style: Theme.of(context).textTheme.titleMedium),
                  Text("Details",style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Theme.of(context).colorScheme.onSurface)),
                ],
              ),
            ),
      );
  }
}
