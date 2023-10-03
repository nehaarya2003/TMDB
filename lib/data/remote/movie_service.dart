import 'package:dio/dio.dart';
import 'package:sample/core/constants/api_constants.dart';
import 'package:sample/core/init/network/api_result.dart';
import 'package:sample/core/init/network/network_manager.dart';
import 'package:sample/view/content/model/auth/auth_response_model.dart';
import 'package:sample/view/content/model/movie/movie_list_reponse_model.dart';

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

  Future<MovieListResponseModel?> getMovieDetail(String movieId) async {
    final Map<String, Object> query = <String, Object>{};
    query['language'] = 'en-US';
    query[''] = movieId;
    final response = await manager.coreDioS
        ?.send<MovieListResponseModel, MovieListResponseModel>(
      NetworkRoutes.MOVIE_DETAIL.rawValue,
      queryParameters: query,
      parseModel: MovieListResponseModel(),
      type: HttpTypes.get,
    );

    if (response?.data is MovieListResponseModel) {
      return response?.data;
    } else {
      return null;
    }
  }

  Future<MovieListResponseModel?> getFavList() async {
    final response = await manager.coreDioS
        ?.send<MovieListResponseModel, MovieListResponseModel>(
      NetworkRoutes.FAV_LIST.rawValue,
      parseModel: MovieListResponseModel(),
      type: HttpTypes.get,
    );

    if (response?.data is MovieListResponseModel) {
      return response?.data;
    } else {
      return null;
    }
  }

  Future<MovieListResponseModel?> addToFav() async {
    final response = await manager.coreDioS
        ?.send<MovieListResponseModel, MovieListResponseModel>(
      NetworkRoutes.FAV_LIST.rawValue,
      parseModel: MovieListResponseModel(),
      type: HttpTypes.get,
    );

    if (response?.data is MovieListResponseModel) {
      return response?.data;
    } else {
      return null;
    }
  }
}
