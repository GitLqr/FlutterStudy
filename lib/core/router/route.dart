import 'package:flutter/material.dart';
import 'package:learn_flutter/ui/page/detail/detail.dart';
import 'package:learn_flutter/ui/page/filter/filter.dart';
import 'package:learn_flutter/ui/page/main/main.dart';
import 'package:learn_flutter/ui/page/meal/meal.dart';

class HYRouter {
  static final String initialRoute = HYMainScreen.routeName;
  static final Map<String, WidgetBuilder> routes = {
    HYMainScreen.routeName: (ctx) => HYMainScreen(),
    HYMealScreen.routeName: (ctx) => HYMealScreen(),
    HYDetailScreen.routeName: (ctx) => HYDetailScreen(),
  };
  static final RouteFactory generateRoute = (settings) {
    if (settings.name == HYFilterScreen.routeName) {
      return MaterialPageRoute(
        builder: (ctx) {
          return HYFilterScreen();
        },
        fullscreenDialog: true,
      );
    }
    return null;
  };
  static final RouteFactory unknownRoute = (settings) {};
}
