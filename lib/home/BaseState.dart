/*
  Base State Class for any type of states
 */
abstract class BaseState {

}


class InitialState extends BaseState {

}

class ChangeState extends BaseState {
  int count;
  ChangeState(this.count);
}