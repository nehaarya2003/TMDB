import 'package:sample/view/content/model/movie/movie_list_reponse_model.dart';

import '../../core/init/network/api_result.dart';
import '../../view/content/model/auth/auth_response_model.dart';

abstract class IMovieAuthRepository {
  Future<ApiResult<AuthResponseModel>?>? authenticateAccount();
  Future<ApiResult<MovieListResponseModel>?>? discoverMovies();
  Future<MovieListResponseModel?> getFavList();
}