import 'package:bloc/bloc.dart';
import 'package:sample/home/BaseState.dart';

/*
  Cubit for handing count states
 */
class MyCubit extends Cubit<BaseState> {
  MyCubit() : super(InitialState());

  int count = 0;

  void incrementCount() {
    count++;
    emit(ChangeState(count));
  }

  void decrementCount() {
    if (count > 0) {
      count--;
      emit(ChangeState(count));
    }
  }
}