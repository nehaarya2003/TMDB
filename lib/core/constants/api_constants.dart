
enum NetworkRoutes { AUTH, DISC_MOVIE, MOVIE_DETAIL, FAV_LIST, ADD_FAV }

extension NetwrokRoutesString on NetworkRoutes {
  String get rawValue {
    switch (this) {
      case NetworkRoutes.DISC_MOVIE:
        return '3/discover/movie';
      case NetworkRoutes.AUTH:
        return '/3/authentication';
      case NetworkRoutes.MOVIE_DETAIL:
        return '/3/movie';
      case NetworkRoutes.FAV_LIST:
        return '/3/account/20506274/favorite/movies';

      case NetworkRoutes.ADD_FAV:
        return '/3/account/20506274/favorite"';
      default:
        throw Exception('Routes Not FouND');
    }
  }
}
