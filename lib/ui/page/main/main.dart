import 'package:flutter/material.dart';
import 'package:learn_flutter/ui/page/home/home_drawer.dart';
import 'package:learn_flutter/ui/page/main/initialize_items.dart';

import 'initialize_items.dart';

class HYMainScreen extends StatefulWidget {
  static const String routeName = "/";

  @override
  _HYMainScreenState createState() => _HYMainScreenState();
}

class _HYMainScreenState extends State<HYMainScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: HYHomeDrawer(),
      body: IndexedStack(
        index: _currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        items: items,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
