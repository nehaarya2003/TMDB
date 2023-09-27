import 'package:flutter_bloc/flutter_bloc.dart';

part 'content_event.dart';

part 'content_state.dart';

class ContentBloc extends Bloc<ContentEvent, ContentState> {
  ContentBloc() : super(ContentState()) {
    on((event, emit) async {
      emit(ContentState());
    });
  }
}
