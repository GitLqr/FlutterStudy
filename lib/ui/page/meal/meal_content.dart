import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter/core/model/category_model.dart';
import 'package:learn_flutter/core/model/meal_model.dart';
import 'package:learn_flutter/core/viewmodel/meal_view_model.dart';
import 'package:learn_flutter/ui/widgets/meal_item.dart';
import 'package:provider/provider.dart';

class HYMealContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final category =
        ModalRoute.of(context).settings.arguments as HYCategoryModel;
    return Selector<HYMealViewModel, List<HYMealModel>>(
      selector: (ctx, mealVM) => mealVM.meals
          .where((element) => element.categories.contains(category.id))
          .toList(),
      shouldRebuild: (prev, next) => ListEquality().equals(prev, next),
      builder: (ctx, meals, child) {
        return ListView.builder(
          itemCount: meals.length,
          itemBuilder: (ctx, index) {
            return HYMealItem(meals[index]);
          },
        );
      },
    );
  }
}

// class HYMealContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final category =
//         ModalRoute.of(context).settings.arguments as HYCategoryModel;
//     return Consumer<HYMealViewModel>(
//       builder: (ctx, mealVM, child) {
//         final meals = mealVM.meals
//             .where((meal) => meal.categories.contains(category.id))
//             .toList();
//         return ListView.builder(
//           itemCount: meals.length,
//           itemBuilder: (ctx, index) {
//             return ListTile(
//               title: Text(meals[index].title),
//             );
//           },
//         );
//       },
//     );
//   }
// }
