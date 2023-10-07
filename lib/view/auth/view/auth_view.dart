import 'package:awesome_flutter_extensions/awesome_flutter_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sample/view/auth/blocs/auth_bloc.dart';
import 'package:sample/view/auth/view/auth_button.dart';
import 'package:sample/view/auth/view/password_input.dart';
import 'package:sample/view/common/loading.dart';

import 'email_input.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AuthBloc(),
      child: _LoginForm1(),
    );
  }
}

class _LoginForm1 extends StatelessWidget {
  const _LoginForm1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: BlocListener<AuthBloc, AuthenticationState>(
          listener: (context, state) {
            final authFailureOrSuccess = state.authFailureOrSuccess;

            if (authFailureOrSuccess != null) {
              authFailureOrSuccess.fold(
                (failure) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        failure.when<String>(
                          invalidEmailAndPasswordCombination: () =>
                              'Invaid email and password combination!',
                          serverError: (e) => e,
                        ),
                      ),
                    ),
                  );
                },
                (success) {
                  if (success.success == true) {
                    context.goNamed('content');
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(success.status_message ?? ""),
                      ),
                    );
                  }
                },
              );
            }
          },
          child: SingleChildScrollView(
            child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/auth.png",
                  height: context.sizes.height * 0.53,
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.center,
                ),
                const SizedBox(height: 10.0),
                Text(
                  "Authentication",
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onSurface),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                  child: EmailInput(),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: PasswordInput(),
                ),
                const SizedBox(
                  height: 30,
                ),
                const AuthButton(),
                const SizedBox(height: 15),
                const LoadingIndicator(),
                const SizedBox(height: 10.0),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
                  child: Text(
                    "Note: If your credentials do not exist, a new account will be created automatically.",
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium
                        ?.copyWith(color: Theme.of(context).colorScheme.error),
                  ),
                )
              ],
            ),
            //),
          ),
        ),
      ),
    );
  }
}
