import 'package:flutter_bloc/flutter_bloc.dart';

part 'detail_event.dart';

part 'detail_state.dart';

class DetailBloc extends Bloc<DetailEvent, DetailState> {
  DetailBloc() : super(DetailState()) {
    on((event, emit) async {
      emit(DetailState());
    });
  }
}
