import 'package:flutter/material.dart';

class HYOperationItem extends StatelessWidget {
  final Widget _icon;
  final String _title;
  final Color textColor;

  HYOperationItem(this._icon, this._title, {this.textColor = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      // color: Colors.red,
      padding: EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _icon,
          SizedBox(width: 3),
          Text(_title, style: TextStyle(color: textColor)),
        ],
      ),
    );
  }
}
