import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_ninja/auth/model/login_response.dart';
import 'package:food_ninja/auth/view/login_screen.dart';
import 'package:food_ninja/core/network/dio_helper/dio_helper.dart';
import 'package:food_ninja/core/network/endpoints.dart';

import '../model/register_response.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  AuthCubit get(context) => BlocProvider.of(context);

  TextEditingController nameEt = TextEditingController();
  TextEditingController emailEt = TextEditingController();
  TextEditingController passwordEt = TextEditingController();
  TextEditingController phoneEt = TextEditingController();

  RegisterResponse? registerResponse;

  void registerUser() {
    Map<String, dynamic> data = {
      "name": nameEt.text,
      "email": emailEt.text,
      "password": passwordEt.text,
      "mobile": phoneEt.text
    };
    emit(AuthLoading());
    DioHelper.postData(url: registerEp, data: data).then((value) {
      if (value.statusCode == 200) {
        registerResponse = RegisterResponse.fromJson(value.data);
        emit(AuthSuccess());
      } else {
        emit(AuthFail());
      }
    }).catchError((e) {
      emit(AuthFail());
    });
  }

  LoginResponse? loginResponse;

  void login() {
    emit(AuthLoading());
    Map<String, String> data = {
      "email": emailEt.text,
      "password": passwordEt.text,
    };
    DioHelper.postData(url: loginEp, data: data).then((value) {
      if (value.statusCode == 200) {
        loginResponse = LoginResponse.fromJson(value.data);
        token = loginResponse!.token!;
        emit(AuthSuccess());
      } else {
        emit(AuthFail());
      }
    }).catchError((e) {
      emit(AuthFail());
    });
  }
}
