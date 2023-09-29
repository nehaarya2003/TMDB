import 'package:dio/dio.dart';
import 'package:sample/core/constants/api_constants.dart';
import 'package:sample/core/init/network/network_manager.dart';
import 'package:sample/view/content/model/auth/auth_response_model.dart';
import 'package:sample/view/content/model/movie/movie_list_reponse_model.dart';

import '../../core/di/injector_provider.dart';
import '../../core/enums/http_request_enum.dart';

class MovieService {
  final NetworkManager manager = inject<NetworkManager>();

  MovieService();

  Future<AuthResponseModel?> authenticateUser() async {
    final response =
        await manager.coreDio?.send<AuthResponseModel, AuthResponseModel>(
      NetworkRoutes.AUTH.rawValue,
      parseModel: AuthResponseModel(),
      type: HttpTypes.get,
    );

    if (response?.data is AuthResponseModel) {
      return response?.data;
    } else {
      return null;
    }
  }

  Future<MovieListResponseModel?> fetchMovieList(String token) async {
    final Map<String, Object> query = new Map<String, Object>();
    query['include_adult'] = false;
    query['include_video'] = false;
    query['language'] = 'en-US';
    query['sort_by'] = 'popularity.desc';
    final response = await manager.coreDio
        ?.send<MovieListResponseModel, MovieListResponseModel>(
      NetworkRoutes.DISC_MOVIE.rawValue,
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

  Future<MovieListResponseModel?> getMovieDetail(String movieId) async {
    final Map<String, Object> query = new Map<String, Object>();
    query['language'] = 'en-US';
    query[''] = movieId;
    final response = await manager.coreDio
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
    final response = await manager.coreDio
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
    final response = await manager.coreDio
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
