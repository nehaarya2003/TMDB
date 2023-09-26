import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sample/view/auth/blocs/auth_bloc.dart';
import 'package:sample/view/fav/blocs/fav_bloc.dart';

class FavView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<FavBloc, FavState>(
      listener: (context, state) {
        if (state is AuthSuccessState) {
          context.goNamed('content');
          // Navigator.of(context).pushReplacement(ContentView().ro));
        }
        if (state is AuthFailureState) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("state.message"),
            ),
          );
        }
      },
      child: const Text("fav"),
    );
  }
}
