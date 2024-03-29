import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:state_mangment/core/network/dio_helper/dio_helper.dart';
import 'package:state_mangment/core/network/endpoints.dart';
import 'package:state_mangment/home/model/articles_model.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  HomeCubit get(context) => BlocProvider.of(context);

  ArticlesModel? articlesModel;

  getArticls() {
    emit(HomeEverythingLoading());
    DioHelper.getData(url: everythingEndPoint).then((value) {
      if (value.statusCode == 200) {
        print(value.data);
        articlesModel = ArticlesModel.fromJson(value.data);
        emit(HomeEverythingSuccess());
      } else {
        print("error");
        emit(HomeEverythingError());
      }
    }).catchError((e) {
      emit(HomeEverythingError());
    });
  }
}
