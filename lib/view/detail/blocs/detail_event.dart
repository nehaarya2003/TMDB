part of 'detail_bloc.dart';


@freezed
class DetailEvent with _$DetailEvent {
  const factory DetailEvent.getMovieDetail(String movieID) =
  _GetMovieDetail;

  const factory DetailEvent.addToFav(String movieId , bool isFav) =
  _AddToFav;

  const factory DetailEvent.removeFromFav(String accountID) =
  _removeFromFav;

}

