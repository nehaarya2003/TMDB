import 'package:flutter_bloc/flutter_bloc.dart';

part 'fav_event.dart';

part 'fav_state.dart';

class FavBloc extends Bloc<FavEvent, FavState> {
  FavBloc() : super(FavState()) {
    on((event, emit) async {
      emit(FavState());
    });
  }
}
