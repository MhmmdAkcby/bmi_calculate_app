import 'package:flutter/material.dart';

class NavigatorManager {
  void navigateToWidget(BuildContext context, Widget widget) {
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
      builder: (context) {
        return widget;
      },
    ), (Route<dynamic> route) => false);
  }
}
