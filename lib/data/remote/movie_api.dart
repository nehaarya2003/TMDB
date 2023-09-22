import 'package:sample/data/model/movie.dart';

abstract class MovieApi{
  Future<List<Movie>> getMovieList();
}