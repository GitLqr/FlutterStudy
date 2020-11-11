import 'package:flutter/material.dart';
import 'package:learn_flutter/core/viewmodel/favor_view_model.dart';
import 'package:learn_flutter/ui/widgets/meal_item.dart';
import 'package:provider/provider.dart';

class HYFavorContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<HYFavorViewModel>(
      builder: (ctx, favorVM, child) {
        if (favorVM.favorMeals.length == 0) {
          return Center(
            child: Text("未收藏美食"),
          );
        }

        return ListView.builder(
          itemCount: favorVM.favorMeals.length,
          itemBuilder: (itemCtx, index) {
            return HYMealItem(favorVM.favorMeals[index]);
          },
        );
      },
    );
  }
}
