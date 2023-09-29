import 'package:awesome_flutter_extensions/awesome_flutter_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sample/view/auth/blocs/auth_bloc.dart';
import 'package:sample/view/auth/view/auth_button.dart';
import 'package:sample/view/auth/view/password_input.dart';
import 'package:sample/view/common/loading.dart';
import 'package:sample/view/common/tmdb_text_form_field.dart';

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
  _LoginForm1({
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
                  // Do something to handle failure. For example, show a
                  // snackbar saying "Invalid Email and Password Combination" or
                  // "Server Error" depending on the failure.

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        failure.when<String>(
                          invalidEmailAndPasswordCombination: () =>
                              'Invaid email and password combination!',
                          serverError: () => 'Server Error!',
                        ),
                      ),
                    ),
                  );
                },
                (success) {
                  context.goNamed('content');
                 /* ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Sign in successful...'),
                    ),
                  );*/
                },
              );
            }
          },
          child:  SingleChildScrollView(
            reverse: true,
           // child: Form(
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/auth.png",
                    height: context.sizes.height * 0.5,
                    width: double.infinity,
                    fit: BoxFit.fill,
                    alignment: Alignment.center,
                  ),
                   const SizedBox(height: 20.0),
                  Text(
                    "Authentication",
                    style: Theme.of(context).textTheme.displayMedium?.copyWith(color: Theme.of(context).colorScheme.onSurface),
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
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                    child: Text(
                      "Note: If your credentials do not exist, a new account will be created automatically.",
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium
                          ?.copyWith(
                          color: Theme.of(context).colorScheme.error),
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
/*

class _LoginForm extends StatelessWidget {
   _LoginForm({
    Key? key,
  }) : super(key: key);

  final _userEmailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: BlocBuilder<AuthBloc, AuthenticationState>(
        builder: (context, authState) {
           if (authState is AuthenticationUnauthenticated) {
            return const Text("login falied");
          } else {
            return  Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/auth.png",
                      height: context.sizes.height * 0.5,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      alignment: Alignment.center,
                    ),
                    const SizedBox(height: 20.0),
                    Text(
                      "Authentication",
                      style: Theme.of(context).textTheme.displayMedium?.copyWith(color: Theme.of(context).colorScheme.onSurface),
                    ),
                    _LoginEmail(controller: _userEmailController),
                    const SizedBox(height: 10.0),
                    _LoginPassword(controller: _passwordController),
                    const SizedBox(height: 10.0),
                    _SubmitButton(username: _userEmailController.text,password: _passwordController.text,),
                    const SizedBox(height: 10.0),
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                      child: Text(
                        "Note: If your credentials do not exist, a new account will be created automatically.",
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium
                            ?.copyWith(
                                color: Theme.of(context).colorScheme.error),
                      ),
                    )
                  ],
                ),
              );

          }
        },
      ),
    );
  }
}*/

class _LoginEmail extends StatelessWidget {
  const _LoginEmail({
    Key? key,
    required this.controller,
  }) : super(
          key: key,
        );

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TmdbTextFormField(
      hint: 'email',
      controller: controller,
      formatters: [
        FilteringTextInputFormatter.deny('\n'),
      ],
    );
  }
}

class _LoginPassword extends StatelessWidget {
  const _LoginPassword({Key? key, required this.controller}) : super(key: key);

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TmdbTextFormField(
      hint: 'password',
      controller: controller,
      formatters: [
        FilteringTextInputFormatter.deny('\n'),
      ],
    );
  }
}


