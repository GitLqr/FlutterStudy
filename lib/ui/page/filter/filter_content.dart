import 'package:flutter/material.dart';
import 'package:learn_flutter/core/viewmodel/filter_view_model.dart';
import 'package:provider/provider.dart';

class HYFilterContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildChoiceTitle(context),
        buildChoiceSelect(),
      ],
    );
  }

  Widget buildChoiceTitle(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      alignment: Alignment.center,
      child: Text(
        "展示你的选择",
        style: Theme
            .of(context)
            .textTheme
            .display3
            .copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget buildChoiceSelect() {
    return Expanded(
      child: Consumer<HYFilterViewModel>(
        builder: (ctx, filterVM, child) {
          return ListView(
            children: [
              buildListTile(
                  "无谷蛋白", "展示无谷蛋白食物", filterVM.isGLutenFree, (value) {
                filterVM.isGLutenFree = value;
              }),
              buildListTile(
                  "不含乳糖", "展示不含乳糖食物", filterVM.isLactoseFree, (value) {
                filterVM.isLactoseFree = value;
              }),
              buildListTile(
                  "普通素食者", "展示普通素食相关食物", filterVM.isVegetarian, (value) {
                filterVM.isVegetarian = value;
              }),
              buildListTile(
                  "严格素食者", "展示严格素食相关食物", filterVM.isVegan, (value) {
                filterVM.isVegan = value;
              }),
            ],
          );
        },
      ),
    );
  }

  Widget buildListTile(String title, String subtitle, bool value,
      Function onChange) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Switch(value: value, onChanged: onChange),
    );
  }
}
