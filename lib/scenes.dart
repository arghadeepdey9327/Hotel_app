import 'package:app/constant.dart';
import 'package:flutter/material.dart';

class Scenes {
  String text, text1;
  Color body_color, body_color1;
  int height;
  Scenes(
      {@required this.body_color,
      @required this.text,
      @required this.body_color1,
      @required this.text1,
      @required this.height});
  Row getRowWithScenes() {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              color: body_color),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Icon(
                  Icons.lightbulb_outline,
                  size: 50,
                ),
                Name(text: text, size: 25, textColor: Colors.white).getText()
              ],
            ),
          ),
        ),
        SizedBox(
          width: height.toDouble(),
        ),
        //second =>
        Container(
          margin: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              color: body_color1),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Icon(
                  Icons.lightbulb_outline,
                  size: 50,
                ),
                Name(text: text1, size: 25, textColor: Colors.white).getText()
              ],
            ),
          ),
        ),
      ],
    );
  }
}
