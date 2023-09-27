import 'package:awesome_flutter_extensions/awesome_flutter_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../auth/blocs/auth_bloc.dart';

class TmdbTextFormField extends StatelessWidget{
  const TmdbTextFormField({super.key,required this.hint,required this.formatters});
  final String hint;
  final List<TextInputFormatter> formatters;
  @override
  Widget build(BuildContext context) {
   return SizedBox(
      width: context.sizes.width *0.7,
      child: TextFormField(
        inputFormatters: formatters,
        onChanged: ((value) {
          context
              .read<AuthBloc>()
              .add(SignUpPasswordChangedEvent(password: value));
        }),
        obscureText: true,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(12),
            labelText: hint,
            hintText: hint,
            focusedBorder:OutlineInputBorder(
                borderSide: BorderSide(
                    width: 2, color: Theme.of(context).colorScheme.primary)) ,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    width: 2, color: Theme.of(context).colorScheme.primaryContainer))),
      ),
    );
  }

}