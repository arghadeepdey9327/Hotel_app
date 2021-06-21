import 'package:flutter/material.dart';

class Name {
  int size;
  String text;
  Color textColor;
  Name({this.size, this.text, this.textColor});
  Widget getText() {
    return Text(
      text,
      style: TextStyle(
          fontSize: size.toDouble(),
          color: textColor,
          fontWeight: FontWeight.w600),
    );
  }
}

class Picture {
  String picName;
  int size;
  Picture({@required this.picName, @required this.size});
  Widget getImage() {
    return Image.asset(
      'assets/$picName',
      height: size.toDouble(),
    );
  }
}
