part of 'home_cubit.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeEverythingLoading extends HomeState {}
class HomeEverythingSuccess extends HomeState {}
class HomeEverythingError extends HomeState {}
