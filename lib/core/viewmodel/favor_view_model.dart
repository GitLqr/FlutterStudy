import 'package:flutter/material.dart';
import 'package:learn_flutter/core/model/meal_model.dart';

class HYFavorViewModel extends ChangeNotifier {
  List<HYMealModel> _favorMeals = [];

  List<HYMealModel> get favorMeals {
    return _favorMeals;
  }

  void addMeal(HYMealModel meal) {
    _favorMeals.add(meal);
    notifyListeners();
  }

  void removeMeal(HYMealModel meal) {
    _favorMeals.remove(meal);
    notifyListeners();
  }

  void handleMeal(HYMealModel meal) {
    if (isFavor(meal)) {
      removeMeal(meal);
    } else {
      addMeal(meal);
    }
  }

  bool isFavor(HYMealModel meal) {
    return _favorMeals.contains(meal);
  }
}
