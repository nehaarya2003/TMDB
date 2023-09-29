part of 'content_bloc.dart';

@freezed
class ContentState with _$ContentState {
  const factory ContentState({
    required String token,
    @Default(false) bool isLoading,
    @Default(false) bool showErrorMessage,
    Either<MovieAuthFailure, Unit>? authFailureOrSuccess,
  }) = _ContentState;

  factory ContentState.initial() => const ContentState(
    token: AppConstants.token,
  );
}


