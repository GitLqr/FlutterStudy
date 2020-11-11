import 'package:flutter/material.dart';
import 'package:learn_flutter/core/model/meal_model.dart';

import 'detail_content.dart';
import 'detail_floating_button.dart';

class HYDetailScreen extends StatelessWidget {
  static const String routeName = "/detail";

  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context).settings.arguments as HYMealModel;
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: Center(
        child: HYDetailContent(meal),
      ),
      floatingActionButton: HYDetailFloatingButton(meal),
    );
  }
}
