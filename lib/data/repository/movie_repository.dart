import 'package:sample/data/model/movie.dart';

abstract class MovieRepository{
  Future<List<Movie>> getMovieList();
}