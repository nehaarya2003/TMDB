part of 'content_bloc.dart';

@freezed
class ContentState with _$ContentState {
  const factory ContentState({
    required String token,
    @Default(false) bool isLoading,
    @Default(0) int index,
    @Default(false) bool showErrorMessage,
    MovieListResponseModel? movieResponse,
    Either<MovieAuthFailure, Unit>? authFailureOrSuccess,
  }) = _ContentState;

  factory ContentState.initial() => const ContentState(
        token: AppConstants.token,
        isLoading: true,
      );
}
