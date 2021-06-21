import 'package:flutter/material.dart';

class bottomAppBar {
  BottomAppBar getappBar() {
    return BottomAppBar(
      color: Colors.blue,
      child: Row(
        children: [
          Icon(
            Icons.lightbulb,
            size: 100,
            color: Colors.white,
          ),
          SizedBox(
            width: 25,
          ),
          Icon(
            Icons.house,
            size: 100,
            color: Colors.white,
          ),
          SizedBox(
            width: 25,
          ),
          Icon(
            Icons.settings,
            size: 100,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
