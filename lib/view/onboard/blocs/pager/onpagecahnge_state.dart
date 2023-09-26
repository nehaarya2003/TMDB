part of 'pager_bloc.dart';

class OnPageChangeState {
  int currentIndex;
  OnPageChangeState({required this.currentIndex});
}

class OnMoveNextState extends OnPageChangeState {
  OnMoveNextState() : super(currentIndex: 0);
}
