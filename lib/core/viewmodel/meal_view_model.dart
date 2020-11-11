import 'package:learn_flutter/core/services/meal_request.dart';

import 'base_view_model.dart';

class HYMealViewModel extends BaseMealViewModel {
  HYMealViewModel() {
    HYMealRequest.getMealData().then((res) {
      meals = res;
    });
  }
}
