import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:sample/data/model/movie.dart';
import 'package:sample/data/remote/movie_api.dart';

import '../../core/init/database/database_helper.dart';

class MovieApiImp implements MovieApi {
  Future<List<Movie>> getMoviesFromDb() async {
    List<Movie> tasks = await DatabaseHelper().getAllMovies();
    return tasks;
  }

  @override
  Future<List<Movie>> getMovieList() async {
    try {
      final movieList = await getMoviesFromDb();
      if (movieList.isEmpty) {
        final response = await Dio().get(
            'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json');
        if (response.statusCode == 200) {
          Map<String, dynamic> mapResponse = json.decode(response.data);
          var list = mapResponse['pokemon'] as List;
          List<Movie> listPokemon=[] ;
          for (var idx = 0; idx < list.length; idx++) {
            Movie pokemon = Movie(
                list.asMap()[idx]['title'],
                list.asMap()[idx]['imageUrl'],
                list.asMap()[idx]['description']);
            listPokemon.add(pokemon);
          }
          return listPokemon;
        } else {
          throw Exception("Error Code: ${response.statusCode}");
        }
      } else {
        return movieList;
      }
    } catch (e) {
      throw Exception("There was a problem with the connection");
    }
  }
}
