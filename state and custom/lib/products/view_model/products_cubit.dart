import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:state_mangment/products/model/product_model.dart';

part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit() : super(ProductsInitial());

  ProductsCubit get(context) => BlocProvider.of(context);

  List<ProductModel> data = [
    ProductModel(title: 'Fresh Farm Beef Hotdog - 400g', price: '75.95', image: 'https://mcprod.hyperone.com.eg/media/catalog/product/cache/1ca275941aea0ae98b372dcb44b7c67a/f/r/fresh_farm_beef_hotdog.jpg'),
    ProductModel(title: 'Fresh Farm Chicken Luncheon With Olives - 200g', price: '10', image: 'https://mcprod.hyperone.com.eg/media/catalog/product/cache/1ca275941aea0ae98b372dcb44b7c67a/6/d/6da79592-b306-400a-8fd5-22dede9f217ce_6224008853435__1.jpg?fit=bounds&format=webp&height=200&quality=85&width=200'),
    ProductModel(title: 'Fresh Farm Beef Luncheon with Meat Pieces - 200g', price: '5', image: 'https://mcprod.hyperone.com.eg/media/catalog/product/cache/1ca275941aea0ae98b372dcb44b7c67a/w/t/wtm_d781a91c-e1d7-4150-ad13-d3be045592da24b75bee033cbf9d4185a00e038c097a_6224008853503_1.jpg?fit=bounds&format=webp&height=200&quality=85&width=200'),
  ];


  void addProductToFav(int indexOfProduct){
    data[indexOfProduct].isFav = !data[indexOfProduct].isFav;
    emit(AddTofav());
  }

  void removeProduct(int index){
    data.removeAt(index);
    emit(RemoveItem());

  }

  void initScreen(){
    // do something

  }






}
