import 'package:sample/data/model/movie.dart';
import 'package:sample/data/remote/movie_service.dart';
import 'package:sample/domain/repositories/imovie_auth_repository.dart';
import 'package:sample/view/content/model/auth/auth_response_model.dart';
import 'package:sample/view/content/model/movie/movie_list_reponse_model.dart';

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
  Future<MovieListResponseModel?> getMovieDetail(String movieID) async {
    try {
      // Make a GET request to the API endpoint to fetch user data.
      final response = await _dio.getMovieDetail(movieID);

      // Check if the response status code is 200 (OK).
      return response;
    } catch (e) {
      // If any exception occurs during the API call, throw an exception with the error message.
      throw Exception('An error occurred: $e');
    }
  }

  @override
  Future<MovieListResponseModel?> getFavList() async {
    try {
      // Make a GET request to the API endpoint to fetch user data.
      final response = await _dio.getFavList();

      // Check if the response status code is 200 (OK).
      return response;
    } catch (e) {
      // If any exception occurs during the API call, throw an exception with the error message.
      throw Exception('An error occurred: $e');
    }
  }

  @override
  Future<MovieListResponseModel?> addToFav() async {
    try {
      // Make a GET request to the API endpoint to fetch user data.
      final response = await _dio.addToFav();

      // Check if the response status code is 200 (OK).
      return response;
    } catch (e) {
      // If any exception occurs during the API call, throw an exception with the error message.
      throw Exception('An error occurred: $e');
    }
  }
}
