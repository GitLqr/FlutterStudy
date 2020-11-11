import 'package:flutter/material.dart';
import 'package:learn_flutter/core/model/category_model.dart';
import 'package:learn_flutter/core/services/json_parse.dart';

class HYHomeContent extends StatefulWidget {
  @override
  _HYHomeContentState createState() => _HYHomeContentState();
}

class _HYHomeContentState extends State<HYHomeContent> {
  List<HYCategoryModel> _categories = [];

  @override
  void initState() {
    super.initState();
    JsonParse.getCategoryData().then((res) {
      setState(() {
        _categories = res;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(20),
      itemCount: _categories.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        childAspectRatio: 1.5,
      ),
      itemBuilder: (ctx, index) {
        final bgColor = _categories[index].cColor;
        return Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              gradient: LinearGradient(colors: [
                bgColor.withOpacity(.5),
                bgColor,
              ])),
          alignment: Alignment.center,
          child: Text(
            _categories[index].title,
            style: Theme.of(context).textTheme.display2.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        );
      },
    );
  }
}
