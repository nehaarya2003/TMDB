import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample/view/auth/blocs/auth_bloc.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        context.read<AuthBloc>().add(
          const AuthEvent.loginSubmitted(),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context)
            .colorScheme
            .surfaceVariant, // This is what you need!
      ),
      icon: Image.asset('assets/images/authenticate.png'),
      label:  Text(
        'Authenticate',
        style:     Theme.of(context).textTheme.labelLarge?.copyWith(color: Theme.of(context).colorScheme.primary),

        ),
    );
  }
}