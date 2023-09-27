import 'package:awesome_flutter_extensions/awesome_flutter_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sample/view/auth/blocs/auth_bloc.dart';
import 'package:sample/view/common/tmdb_text_form_field.dart';
import 'package:sample/view/content/view/content_view.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AuthBloc(),
      child: const _LoginForm(),
    );
  }
}

class _LoginForm extends StatelessWidget {
  const _LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, authState) {
          if (authState is AuthSuccessState) {
            return const ContentView();
          } else if (authState is AuthFailureState) {
            return const Text("login falied");
          } else {
            return Container(
              color: Theme.of(context).colorScheme.surface,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                    _LoginEmail(),
                    const SizedBox(height: 10.0),
                    const _LoginPassword(),
                    const SizedBox(height: 10.0),
                    _SubmitButton(),
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
              ),
            );
          }
        },
      ),
    );
  }
}

class _LoginEmail extends StatelessWidget {
  _LoginEmail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TmdbTextFormField(
      hint: 'email',
      formatters: [
        FilteringTextInputFormatter.deny('\n'),
      ],
    );
  }
}

class _LoginPassword extends StatelessWidget {
  const _LoginPassword({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TmdbTextFormField(
      hint: 'password',
      formatters: [
        FilteringTextInputFormatter.deny('\n'),
      ],
    );
  }
}

class _SubmitButton extends StatelessWidget {
  _SubmitButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 156.0,
      height: 56.0,
      child: ElevatedButton.icon(
        onPressed: () {
         /* context.read<AuthBloc>().add(
                SignUpButtonPressedEvent(),
              );*/
          context.goNamed('content');
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context)
              .colorScheme
              .surfaceVariant, // This is what you need!
        ),
        icon: Image.asset('assets/images/authenticate.png'),
        label: Text(
          'Authenticate',
          style: Theme.of(context).textTheme.labelLarge,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
