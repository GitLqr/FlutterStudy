import 'package:flutter/material.dart';
import 'package:learn_flutter/core/model/category_model.dart';

class HYHomeCategoryItem extends StatelessWidget {
  final HYCategoryModel _category;

  HYHomeCategoryItem(this._category);

  @override
  Widget build(BuildContext context) {
    final bgColor = _category.cColor;

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(colors: [
            bgColor.withOpacity(.5),
            bgColor,
          ])),
      alignment: Alignment.center,
      child: Text(
        _category.title,
        style: Theme.of(context).textTheme.display2.copyWith(
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}
