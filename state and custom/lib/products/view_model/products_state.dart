part of 'products_cubit.dart';

@immutable
abstract class ProductsState {}

class ProductsInitial extends ProductsState {}
class AddTofav extends ProductsState {}
class AddToCart extends ProductsState {}
class RemoveItem extends ProductsState {}



