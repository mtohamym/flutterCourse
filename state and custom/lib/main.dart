import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_mangment/app.dart';
import 'package:state_mangment/core/shared/bloc_observer.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const App());
}
