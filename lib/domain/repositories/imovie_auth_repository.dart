import 'package:sample/view/content/model/movie/movie_list_reponse_model.dart';

import '../../view/content/model/auth/auth_response_model.dart';

abstract class IMovieAuthRepository {
  Future<AuthResponseModel?> authenticateAccount();
  Future<MovieListResponseModel?> discoverMovies();
  Future<MovieListResponseModel?> getFavList();
}