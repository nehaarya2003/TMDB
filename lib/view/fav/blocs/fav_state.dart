part of 'fav_bloc.dart';


@freezed
class FavState with _$FavState {
  const factory FavState({
   // required String token,
    @Default(false) bool isLoading,
    @Default(false) bool showErrorMessage,
    Either<MovieAuthFailure, Unit>? authFailureOrSuccess,
  }) = _FavState;

  factory FavState.initial() => const FavState(
    //token: AppConstants.token,
  );
}

