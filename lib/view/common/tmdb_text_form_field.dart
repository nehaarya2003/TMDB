import 'package:awesome_flutter_extensions/awesome_flutter_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../auth/blocs/auth_bloc.dart';

class TmdbTextFormField extends StatelessWidget{
  const TmdbTextFormField({super.key,required this.controller,required this.hint,required this.formatters});
  final String hint;
  final TextEditingController controller;
  final List<TextInputFormatter> formatters;
  @override
  Widget build(BuildContext context) {
   return SizedBox(
      width: context.sizes.width *0.7,
      child: TextFormField(
        inputFormatters: formatters,
        controller: controller,
        onChanged: ((value) {

        }),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter some text';
          }
          return null;
        },
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