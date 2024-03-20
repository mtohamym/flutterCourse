
abstract class CounterState {}

class CounterInitial extends CounterState {}

class CounterIncrease extends CounterState{
  int count;
  CounterIncrease(this.count);
}

class CounterDecrease extends CounterState{}

class ContainerIncrease extends CounterState{}
class ContainerDecrease extends CounterState{}
class ContainerHold extends CounterState{}
