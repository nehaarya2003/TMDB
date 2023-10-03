import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:sample/core/init/network/_cor_dio_operations.dart';
import 'package:sample/core/init/network/api_error.dart';
import 'package:sample/core/init/network/api_result.dart';

import '../../base/model/base_error.dart';
import '../../base/model/base_model.dart';
import '../../enums/http_request_enum.dart';
import 'icore_dio.dart';
import 'iresponse_model.dart';

class CoreDio
    with DioMixin
    implements Dio, ICoreDioNullSafety, ICoreDioNullSafetyCopy {
  CoreDio(this.options) {
    options = options;
    interceptors.add(InterceptorsWrapper());
    httpClientAdapter = IOHttpClientAdapter();
  }

  @override
  final BaseOptions options;

  @override
  Future<IResponseModel<R>> send<R, T>(
    String path, {
    required HttpTypes type,
    required BaseModel<T> parseModel,
    dynamic data,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
    void Function(int, int)? onReceiveProgress,
  }) async {
    final response = await request<dynamic>(
      path,
      data: data,
      options: Options(
        method: type.toString(),
      ),
    );
    switch (response.statusCode) {
      case HttpStatus.ok:
      case HttpStatus.accepted:
        // final model = responseParser<R, T>(parseModel, response.data);
        return ResponseModel<R>(data: response.data);
      default:
        return ResponseModel(error: BaseError('message'));
    }
  }

  @override
  Future<ApiResult<T>> safeCall<T>(
      String path, T Function(Map<String, dynamic>) mapper,
      {data,
        required HttpTypes type,
        Map<String, dynamic>? queryParameters,
      Options? options,
      CancelToken? cancelToken,
      ProgressCallback? onSendProgress,
      ProgressCallback? onReceiveProgress}) async {
    try {
      final response = await request<dynamic>(path,
          data: data,
          queryParameters: queryParameters,
          options:  Options(
            method: type.name.toString(),
          ),
          cancelToken: cancelToken,
          onSendProgress: onSendProgress,
          onReceiveProgress: onReceiveProgress);

      return ApiResult.fromResponse(response, mapper);

    } on DioError catch (exception) {
      return NetworkError(List.filled(
          1,
          ApiError(success: false,
              status_code: exception.response?.statusCode, status_message: exception!=null?exception.toString():"exception fetch auth"),
          growable: false));
    }
  }
}
