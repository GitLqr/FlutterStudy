import 'package:flutter/material.dart';
import 'package:learn_flutter/ui/page/main/initialize_items.dart';

class HYMainScreen extends StatefulWidget {
  static const String routeName = "/";

  @override
  _HYMainScreenState createState() => _HYMainScreenState();
}

class _HYMainScreenState extends State<HYMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: [],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: items,
      ),
    );
  }
}
