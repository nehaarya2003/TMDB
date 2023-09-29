import 'dart:io';

import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../core/di/injector_provider.dart';


class AuthService {
  AuthService() ;

  Future<bool> loginUser(String userEmail, String password) async {
    try {

      final _auth = FirebaseAuth.instance;
      final response= await _auth.signInWithEmailAndPassword(email: userEmail, password:password);



      // Check if the response status code is 200 (OK).
      if (response.credential?.accessToken != null) {
        return true;
      } else {
        // If the response status code is not 200, throw an exception with an error message.
        return false;
      }
    } catch (e) {
      // If any exception occurs during the API call, throw an exception with the error message.
      return false;
    }
  }
  Future<bool> createUser(String userEmail, String password) async {
    try {

      final _auth = FirebaseAuth.instance;
      final response= await _auth.createUserWithEmailAndPassword(email: userEmail, password:password);



      // Check if the response status code is 200 (OK).
      if (response.credential?.accessToken != null) {
        return true;
      } else {
        // If the response status code is not 200, throw an exception with an error message.
        return false;
      }
    } catch (e) {
      // If any exception occurs during the API call, throw an exception with the error message.
      return false;
    }
  }
}
