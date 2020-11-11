import 'package:flutter/material.dart';
import 'package:learn_flutter/core/router/route.dart';
import 'package:learn_flutter/core/viewmodel/favor_view_model.dart';
import 'package:learn_flutter/core/viewmodel/meal_view_model.dart';
import 'package:learn_flutter/ui/shared/app_theme.dart';
import 'package:provider/provider.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => HYMealViewModel()),
        ChangeNotifierProvider(create: (ctx) => HYFavorViewModel()),
      ],
      child: MaterialApp(
        title: "美食广场",
        // 主题
        theme: HYAppTheme.norTheme,
        // 路由
        initialRoute: HYRouter.initialRoute,
        routes: HYRouter.routes,
        onGenerateRoute: HYRouter.generateRoute,
        onUnknownRoute: HYRouter.unknownRoute,
      ),
    );
  }
}
