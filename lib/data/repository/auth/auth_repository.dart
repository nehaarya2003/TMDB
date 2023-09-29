import 'package:flutter/material.dart';

import '../../../core/di/injector_provider.dart';
import '../../../domain/repositories/iauth_repository.dart';
import '../../remote/auth/auth_service.dart';

class AuthRepository implements IAuthRepository {
  final AuthService _dio = inject<AuthService>();

  Future<bool> loginUser(String login, String senha) async {
    try {
      // Make a GET request to the API endpoint to fetch user data.
      final response = await _dio.loginUser(login, senha);

      // Check if the response status code is 200 (OK).
      return response;
    } catch (e) {
      // If any exception occurs during the API call, throw an exception with the error message.
      throw Exception('An error occurred: $e');
    }
  }

  @override
  Future<bool> createUser(String login, String senha) async{
    try {
      // Make a GET request to the API endpoint to fetch user data.
      final response = await _dio.createUser(login, senha);

      // Check if the response status code is 200 (OK).
      return response;
    } catch (e) {
      // If any exception occurs during the API call, throw an exception with the error message.
      throw Exception('An error occurred: $e');
    }
  }
}
