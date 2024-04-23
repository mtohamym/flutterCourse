import 'package:flutter/material.dart';
import 'package:food_ninja/core/network/dio_helper/dio_helper.dart';
import 'package:food_ninja/food_ninga_app.dart';

void main() {
  DioHelper.init();
  runApp(const FoodNingaApp());
}
