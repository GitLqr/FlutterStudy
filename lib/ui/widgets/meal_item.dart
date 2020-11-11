import 'package:flutter/material.dart';
import 'package:learn_flutter/core/model/meal_model.dart';
import 'package:learn_flutter/core/viewmodel/favor_view_model.dart';
import 'package:learn_flutter/ui/page/detail/detail.dart';
import 'package:learn_flutter/ui/widgets/operation_item.dart';
import 'package:provider/provider.dart';

class HYMealItem extends StatelessWidget {
  final double cardRadius = 12.0;
  final HYMealModel _meal;

  HYMealItem(this._meal);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        margin: EdgeInsets.all(10),
        elevation: 5,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(cardRadius)),
        child: Column(
          children: [
            buildBasicInfo(context),
            buildOperationInfo(),
          ],
        ),
      ),
      onTap: () {
        Navigator.of(context)
            .pushNamed(HYDetailScreen.routeName, arguments: _meal);
      },
    );
  }

  Widget buildBasicInfo(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(cardRadius),
            topRight: Radius.circular(cardRadius),
          ),
          // clipBehavior:,
          child: Image.network(
            _meal.imageUrl,
            width: double.infinity,
            height: 250,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          right: 10,
          bottom: 10,
          child: Container(
            width: 300,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Text(
              _meal.title,
              style: Theme.of(context)
                  .textTheme
                  .display3
                  .copyWith(color: Colors.white),
            ),
          ),
        )
      ],
    );
  }

  Widget buildOperationInfo() {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        children: [
          Expanded(
            child: HYOperationItem(
              Icon(Icons.schedule),
              "${_meal.duration}分钟",
            ),
          ),
          Expanded(
            child: HYOperationItem(
              Icon(Icons.restaurant),
              "${_meal.complexityStr}",
            ),
          ),
          Expanded(child: buildFavorItem()),
        ],
      ),
    );
  }

  Widget buildFavorItem() {
    return Consumer<HYFavorViewModel>(builder: (ctx, favorVM, child) {
      final iconData =
          favorVM.isFavor(_meal) ? Icons.favorite : Icons.favorite_border;
      final favorColor = favorVM.isFavor(_meal) ? Colors.red : Colors.black;
      final title = favorVM.isFavor(_meal) ? "收藏" : "未收藏";
      return GestureDetector(
        child: HYOperationItem(
          Icon(iconData, color: favorColor),
          title,
          textColor: favorColor,
        ),
        onTap: () {
          favorVM.handleMeal(_meal);
        },
      );
    });
  }
}
