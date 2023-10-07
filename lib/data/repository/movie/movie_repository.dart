import 'package:sample/data/model/movie.dart';
import 'package:sample/data/remote/movie_service.dart';
import 'package:sample/domain/repositories/imovie_auth_repository.dart';
import 'package:sample/view/content/model/auth/auth_response_model.dart';
import 'package:sample/view/content/model/movie/movie_list_reponse_model.dart';
import 'package:sample/view/detail/model/movie_detail_model.dart';

import '../../../core/di/injector_provider.dart';
import '../../../core/init/network/api_result.dart';

class MovieRepository extends IMovieAuthRepository {
  final MovieService _dio = inject<MovieService>();

  @override
  Future<ApiResult<AuthResponseModel>?>? authenticateAccount() async {
    return await _dio.authenticateUser();
  }

  @override
  Future<ApiResult<MovieListResponseModel>?>? discoverMovies() async {
    return await _dio.fetchMovieList();
  }

  @override
  Future<ApiResult<MovieDetailModel>?>? getMovieDetail(String movieID) async {
    return await _dio.getMovieDetail(movieID);
  }

  @override
  Future<ApiResult<MovieListResponseModel>?>? getFavList() async {
    return await _dio.getFavList();
  }

  @override
  Future<ApiResult<AuthResponseModel>?>? addToFav(
      String movieID, bool isFav) async {
    return await _dio.addToFav(movieID, isFav);
  }
}
