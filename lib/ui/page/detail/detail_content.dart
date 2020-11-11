import 'package:flutter/material.dart';
import 'package:learn_flutter/core/model/meal_model.dart';

class HYDetailContent extends StatelessWidget {
  final HYMealModel _meal;

  HYDetailContent(this._meal);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          buildBannerImage(),
          buildMakeTitle(context, "制作材料"),
          buildMakeMaterial(context),
          buildMakeTitle(context, "制作步骤"),
          buildMakeSteps(context),
        ],
      ),
    );
  }

  // 1.横幅图片
  Widget buildBannerImage() {
    return Container(
      width: double.infinity,
      child: Image.network(_meal.imageUrl),
    );
  }

  // 2.制件材料
  Widget buildMakeMaterial(BuildContext context) {
    return buildMakeContentList(
        context: context,
        child: ListView.builder(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: _meal.ingredients.length,
          itemBuilder: (ctx, index) {
            return Card(
              color: Theme.of(context).accentColor,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Text(_meal.ingredients[index]),
              ),
            );
          },
        ));
  }

  // 3.制作步骤
  Widget buildMakeSteps(BuildContext context) {
    return buildMakeContentList(
      context: context,
      child: ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: _meal.steps.length,
        itemBuilder: (ctx, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text("#${index + 1}"),
            ),
            title: Text(_meal.steps[index]),
          );
        },
        separatorBuilder: (ctx, index) {
          return Divider();
        },
      ),
    );
  }

  Widget buildMakeTitle(BuildContext context, String title) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12),
      child: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .display3
            .copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget buildMakeContentList({
    @required BuildContext context,
    @required Widget child,
  }) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      width: MediaQuery.of(context).size.width - 30,
      child: child,
    );
  }
}