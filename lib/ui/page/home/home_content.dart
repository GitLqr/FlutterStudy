import 'package:flutter/material.dart';
import 'package:learn_flutter/core/model/category_model.dart';
import 'package:learn_flutter/core/services/json_parse.dart';
import 'package:learn_flutter/ui/page/home/home_category_item.dart';

class HYHomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<HYCategoryModel>>(
      future: HYJsonParse.getCategoryData(),
      builder: (ctx, snapshot) {
        if (!snapshot.hasData)
          return Center(child: CircularProgressIndicator());
        // if (snapshot.error)
        //   return Center(
        //     child: Text("请求失败"),
        //   );
        final categories = snapshot.data;
        return GridView.builder(
          padding: EdgeInsets.all(20),
          itemCount: categories.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 1.5,
          ),
          itemBuilder: (ctx, index) {
            return HYHomeCategoryItem(categories[index]);
          },
        );
      },
    );
  }
}
