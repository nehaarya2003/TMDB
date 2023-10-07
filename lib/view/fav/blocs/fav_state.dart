part of 'fav_bloc.dart';


@freezed
class FavState with _$FavState {
  const factory FavState({
   // required String token,
    @Default(false) bool isLoading,
    @Default(false) bool showErrorMessage,
    Either<MovieAuthFailure, MovieListResponseModel?>? authFailureOrSuccess,
  }) = _FavState;

  factory FavState.initial() => const FavState(
    isLoading: true,
    //token: AppConstants.token,
  );
}

