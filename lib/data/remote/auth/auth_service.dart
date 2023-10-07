import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sample/view/content/model/auth/auth_response_model.dart';

import '../../../core/di/injector_provider.dart';

class AuthService {
  AuthService();

  Future<AuthResponseModel> loginUser(String userEmail, String password) async {
    try {
      final _auth = FirebaseAuth.instance;
      final response = await _auth.signInWithEmailAndPassword(
          email: userEmail, password: password);

      // Check if the response status code is 200 (OK).
      if (response.user != null) {
        return const AuthResponseModel(success: true);
      } else {
        // If the response status code is not 200, throw an exception with an error message.
        return const AuthResponseModel(
            success: false, status_message: "Something went wrong");
      }
    } catch (e) {
      // If any exception occurs during the API call, throw an exception with the error message.
      return AuthResponseModel(success: false, status_message: e.toString());
    }
  }

  Future<AuthResponseModel> createUser(
      String userEmail, String password) async {
    try {
      final _auth = FirebaseAuth.instance;
      final response = await _auth.createUserWithEmailAndPassword(
          email: userEmail, password: password);

      // Check if the response status code is 200 (OK).
      if (response.credential != null) {
        return const AuthResponseModel(success: true);
      } else {
        // If the response status code is not 200, throw an exception with an error message.
        return const AuthResponseModel(
            success: false, status_message: "Something went wrong");
      }
    } catch (e) {
      // If any exception occurs during the API call, throw an exception with the error message.
      return  AuthResponseModel(
          success: false, status_message: e.toString());
    }
  }
}
