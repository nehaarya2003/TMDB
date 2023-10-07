import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:sample/core/constants/api_constants.dart';
import 'package:sample/core/init/network/api_result.dart';
import 'package:sample/core/init/network/network_manager.dart';
import 'package:sample/view/content/model/auth/auth_response_model.dart';
import 'package:sample/view/content/model/movie/movie_list_reponse_model.dart';
import 'package:sample/view/detail/model/movie_detail_model.dart';

import '../../core/di/injector_provider.dart';
import '../../core/enums/http_request_enum.dart';

class MovieService {
  final NetworkManager manager = inject<NetworkManager>();

  MovieService();

  Future<ApiResult<AuthResponseModel>?>? authenticateUser() async {
    return await manager.coreDio?.safeCall(
        NetworkRoutes.AUTH.rawValue, AuthResponseModel.fromJson,
        type: HttpTypes.get);
  }

  Future<ApiResult<MovieListResponseModel>?>? fetchMovieList() async {
    final Map<String, Object> query = <String, Object>{};
    query['include_adult'] = false;
    query['include_video'] = false;
    query['language'] = 'en-US';
    query['sort_by'] = 'popularity.desc';
    return await manager.coreDio?.safeCall(
      NetworkRoutes.DISC_MOVIE.rawValue,
      MovieListResponseModel.fromJson,
      queryParameters: query,
      type: HttpTypes.get,
    );
  }

  Future<ApiResult<MovieDetailModel>?>? getMovieDetail(String movieId) async {
    final Map<String, Object> query = <String, Object>{};
    query['language'] = 'en-US';
    return await manager.coreDio?.safeCall(
      '${NetworkRoutes.MOVIE_DETAIL.rawValue}/$movieId',
      MovieDetailModel.fromJson,
      queryParameters: query,
      type: HttpTypes.get,
    );
  }

  Future<ApiResult<MovieListResponseModel>?>? getFavList() async {
    final Map<String, Object> query = <String, Object>{};
    query['language'] = 'en-US';
    query['sort_by'] = 'created_at.asc';
    return await manager.coreDio?.safeCall(
      NetworkRoutes.FAV_LIST.rawValue,
      MovieListResponseModel.fromJson,
      queryParameters: query,
      type: HttpTypes.get,
    );
  }

  Future<ApiResult<AuthResponseModel>?>? addToFav(
      String movieID, bool isFav) async {
    final Map<String, Object> query = <String, Object>{};
    query['media_type'] = 'movie';
    query['media_id'] = movieID;
    query['favorite'] = isFav;

    return await manager.coreDio?.safeCall(
      NetworkRoutes.ADD_FAV.rawValue,
      AuthResponseModel.fromJson,
      data: jsonEncode(query),
      type: HttpTypes.post,
    );
  }
}
