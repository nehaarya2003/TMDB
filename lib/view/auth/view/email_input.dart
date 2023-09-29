import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample/view/auth/blocs/auth_bloc.dart';

class EmailInput extends StatelessWidget {
  const EmailInput({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthenticationState>(
      builder: (context, state) {
        return TextFormField(
          decoration:  InputDecoration(
              contentPadding: const EdgeInsets.all(12),

              suffixIcon: IconButton(
                onPressed: () => context
                    .read<AuthBloc>()
                    .add(const AuthEvent.obscurePasswordToggled()),
                icon: const Icon(Icons.close),
              ),
              labelText: 'Email',
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),

              focusedBorder:OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 2, color: Theme.of(context).colorScheme.primary)) ,
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 2, color: Theme.of(context).colorScheme.primaryContainer))
          ),
          keyboardType: TextInputType.emailAddress,
          autocorrect: false,
          onChanged: (value) => context
              .read<AuthBloc>()
              .add(AuthEvent.emailChanged(value)),
          validator: (_) => state.emailAddress.value.fold<String?>(
                (f) => f.maybeMap<String?>(
              invalidEmail: (_) => 'Invalid Email',
              orElse: () => null,
            ),
                (_) => null,
          ),
          autovalidateMode: state.showErrorMessage == true
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
        );
      },
    );
  }
}