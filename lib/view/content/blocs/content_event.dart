part of 'content_bloc.dart';

@freezed
class ContentEvent with _$ContentEvent {
  const factory ContentEvent.authenticateApp() = _AuthenticateApp;
  const factory ContentEvent.indexChanged(int index) = _IndexChanged;
}
