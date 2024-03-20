import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_mangment/counter/view_model/counter_state.dart';


class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());


  // single instance
  static CounterCubit get(context) => BlocProvider.of(context);

  int count = 0;

  void increaseCount(){
    count++;
    emit(CounterIncrease(count));
  }

  void desreaseCount(){
    if (count > 0) {
      count--;
    }
    emit(CounterDecrease());
  }


  double containerW = 100;
  Color color = Colors.green;
  double containerH = 100;

  void tap(){
    containerH = containerH+10;
    containerW = containerW+10;
    color = Colors.red;
    emit(ContainerIncrease());

  }
  void doubleTap(){
    containerH = containerH-10;
    containerW = containerW-10;
    color = Colors.amber;
    emit(ContainerDecrease());
  }

  void onHold(){

    for(int i = 0 ; i < 5 ; i++){
      doubleTap();
      Timer(Duration(seconds: 1), () {
        tap();
      });
    }


    // emit(ContainerHold());

  }





}
