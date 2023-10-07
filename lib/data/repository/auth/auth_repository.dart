import 'package:flutter/material.dart';

import '../../../core/di/injector_provider.dart';
import '../../../domain/repositories/iauth_repository.dart';
import '../../../view/content/model/auth/auth_response_model.dart';
import '../../remote/auth/auth_service.dart';

class AuthRepository implements IAuthRepository {
  final AuthService _dio = inject<AuthService>();

  @override
  Future<AuthResponseModel> loginUser(String userName, String password) async {
    return await _dio.loginUser(userName, password);
  }

  @override
  Future<AuthResponseModel> createUser(String userName, String password) async {
    return await _dio.createUser(userName, password);
  }
}
