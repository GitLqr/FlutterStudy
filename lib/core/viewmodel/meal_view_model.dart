import 'package:flutter/material.dart';
import 'package:learn_flutter/core/model/meal_model.dart';
import 'package:learn_flutter/core/services/meal_request.dart';

class HYMealViewModel extends ChangeNotifier {
  List<HYMealModel> _meals = [];

  List<HYMealModel> get meals {
    return _meals;
  }

  HYMealViewModel() {
    HYMealRequest.getMealData().then((res) {
      _meals = res;
      notifyListeners();
    });
  }
}
