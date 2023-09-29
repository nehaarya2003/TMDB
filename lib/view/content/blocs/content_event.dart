part of 'content_bloc.dart';

@freezed
class ContentEvent with _$ContentEvent {
  const factory ContentEvent.authenticateApp() = _AuthenticateApp;

  const factory ContentEvent.getFavList() = _GetFavList;

  const factory ContentEvent.addToFav() = _AddToFav;
}
