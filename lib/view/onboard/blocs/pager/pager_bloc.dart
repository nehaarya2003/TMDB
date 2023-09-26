import 'package:flutter_bloc/flutter_bloc.dart';

part 'onpagechange_event.dart';

part 'onpagecahnge_state.dart';

class OnPageNextBloc extends Bloc<OnPageChangeEvent, OnPageChangeState> {
  OnPageNextBloc() : super(OnPageChangeState(currentIndex: 0)) {
    on<MoveNextPage>((event, emit) {
      emit(OnPageChangeState(currentIndex: state.currentIndex + 1));
    });
  }
}
