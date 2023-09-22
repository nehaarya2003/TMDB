import 'package:sample/data/model/movie.dart';
import 'package:sample/data/remote/movie_api.dart';
import 'package:sample/data/repository/movie_repository.dart';

class MovieRepositoryImp implements MovieRepository {
  MovieApi pokemonApi;

  MovieRepositoryImp(this.pokemonApi);

  @override
  Future<List<Movie>> getMovieList() {
    return pokemonApi.getMovieList();
  }
}
