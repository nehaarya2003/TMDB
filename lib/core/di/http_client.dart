import 'package:dio/dio.dart';

import '../../data/cache/storage_helper.dart';

class HttpClient {
  late Dio _client;

  HttpClient() {
    _client = Dio();
  }

  Future<Response> get(String url) => _client.get(url);

  Future<Response> post(String url, {dynamic body}) =>
      _client.post(url, data: body);

  Future<Response> put(String url, {dynamic body}) =>
      _client.put(url, data: body);

  Future<Response> delete(String url, {dynamic body}) => _client.delete(url);
}
