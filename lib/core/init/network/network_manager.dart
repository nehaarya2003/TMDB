import 'package:dio/dio.dart';
import 'package:sample/core/constants/api_constants.dart';
import 'package:sample/core/constants/app_contants.dart';

import '../../di/injector_provider.dart';
import 'core_dio.dart';
import 'icore_dio.dart';

class NetworkManager {
  NetworkManager() {
    coreDio = CoreDio(baseOptions);
  }

  final baseOptions = BaseOptions(
      baseUrl: 'https://api.themoviedb.org/',
      headers: {
        'accept': 'application/json',
        'Authorization': 'Bearer ${AppConstants.token}'
      });
  ICoreDioNullSafety? coreDio;
}
