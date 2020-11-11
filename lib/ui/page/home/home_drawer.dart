import 'package:flutter/material.dart';
import 'package:learn_flutter/ui/page/filter/filter.dart';

class HYHomeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: Drawer(
        child: Column(
          children: [
            buildHeaderView(context),
            buildListTile(context, Icon(Icons.restaurant), "进餐", () {
              Navigator.of(context).pop();
            }),
            buildListTile(context, Icon(Icons.settings), "过滤", () {
              Navigator.of(context).pushNamed(HYFilterScreen.routeName);
            }),
          ],
        ),
      ),
    );
  }

  Widget buildHeaderView(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120,
      color: Colors.orange,
      margin: EdgeInsets.only(bottom: 20),
      alignment: Alignment(0, 0.5),
      child: Text(
        "开始动手",
        style: Theme.of(context)
            .textTheme
            .display4
            .copyWith(fontWeight: FontWeight.w400),
      ),
    );
  }

  Widget buildListTile(
      BuildContext context, Widget icon, String title, Function handle) {
    return ListTile(
      leading: icon,
      title: Text(
        title,
        style: Theme.of(context).textTheme.display2,
      ),
      onTap: handle,
    );
  }
}
