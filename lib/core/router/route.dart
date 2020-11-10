import 'package:flutter/material.dart';
import 'package:learn_flutter/ui/page/main/main.dart';

class HYRouter {
  static final String initialRoute = HYMainScreen.routeName;
  static final Map<String, WidgetBuilder> routes = {
    HYMainScreen.routeName: (ctx) => HYMainScreen()
  };
  static final RouteFactory generateRoute = (settings) {};
  static final RouteFactory unknownRoute = (settings) {};
}
