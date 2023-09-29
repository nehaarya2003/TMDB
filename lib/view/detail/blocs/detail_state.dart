part of 'detail_bloc.dart';


@freezed
class DetailState with _$DetailState {
  const factory DetailState({
    required String movieID,
    @Default(false) bool isLoading,
    @Default(false) bool showErrorMessage,
    Either<MovieDetailFailure, Unit>? authFailureOrSuccess,
  }) = _ContentState;

  factory DetailState.initial() => const DetailState(
    movieID: '',
  );
}

