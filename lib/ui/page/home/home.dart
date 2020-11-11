import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter/ui/page/home/home_content.dart';
import 'package:learn_flutter/ui/page/home/home_drawer.dart';

import 'home_app_bar.dart';

class HYHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HYHomeAppBar(context),
      body: HYHomeContent(),
      // drawer: HYHomeDrawer(),
    );
  }
}
