import 'package:flutter/material.dart';

class TabItem {
  // IconData icon;
  String image;
  String title;
  Color circleColor;
  Color? circleStrokeColor;
  TextStyle labelStyle;

  TabItem(
    this.image,
    // this.icon,
    this.title,
    this.circleColor, {
    this.circleStrokeColor,
    this.labelStyle = const TextStyle(fontWeight: FontWeight.bold),
  });
}
