part of 'detail_bloc.dart';


@freezed
class DetailState with _$DetailState {
  const factory DetailState({
    required String movieID,
    @Default(false) bool isLoading,
    @Default(false) bool showErrorMessage,
    Either<MovieDetailFailure,MovieDetailModel?>? movieDetailFetchSuccessFailure,
    Either<bool,FavModel>? favSuccessFailure,
  }) = _ContentState;

  factory DetailState.initial() => const DetailState(
    movieID: '',
    isLoading: true,
  );
}

