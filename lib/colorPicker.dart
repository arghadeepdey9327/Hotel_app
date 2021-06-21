import 'package:flutter/material.dart';

class colorPicker {
  Color color;
  colorPicker({@required this.color});
  Container getColorPicker() {
    return Container(
      child: Icon(
        Icons.colorize,
        size: 40,
        color: color,
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }
}
