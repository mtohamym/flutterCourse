import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_ninja/core/network/dio_helper/dio_helper.dart';
import 'package:food_ninja/core/network/endpoints.dart';
import 'package:food_ninja/home/model/food_model.dart';
import 'package:food_ninja/home/model/resturant_model.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  HomeCubit get(context) => BlocProvider.of(context);

  ResturantModel? resturantModel;
  FoodModel? foodModel;

  void loadData(){
    getResturantsData();
    getFoods();
  }

  void getResturantsData() {
    emit(ReasturantDataLoading());
    DioHelper.getData(url: resturantEp, token: token).then((value) {
      if (value.statusCode == 200) {
        resturantModel = ResturantModel.fromJson(value.data);
        emit(ReasturantDataSuccess());
      }
      emit(ReasturantDataFail());
    }).catchError((onError) {
      emit(ReasturantDataFail());
    });
  }

  void getFoods() {
    emit(FoodDataLoading());
    DioHelper.getData(url: foodEp, token: token).then((value) {
      if (value.statusCode == 200) {
        foodModel = FoodModel.fromJson(value.data);
        emit(FoodDataSuccess());
      }
      emit(FoodDataFail());
    }).catchError((onError) {
      emit(FoodDataFail());
    });
  }
}
