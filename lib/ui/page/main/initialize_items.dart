import 'package:flutter/material.dart';
import 'package:learn_flutter/ui/page/favor/favor.dart';
import 'package:learn_flutter/ui/page/home/home.dart';

final List<Widget> pages = [
  HYHomeScreen(),
  HYFavorScreen(),
];
final List<BottomNavigationBarItem> items = [
  BottomNavigationBarItem(
    label: "首页",
    icon: Icon(Icons.home),
  ),
  BottomNavigationBarItem(
    label: "收藏",
    icon: Icon(Icons.star),
  ),
];
