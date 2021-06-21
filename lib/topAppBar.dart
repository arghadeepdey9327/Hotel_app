import 'package:flutter/material.dart';
import 'constant.dart';

class topAppBar {
  PreferredSize getTopAppBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(100),
      child: AppBar(
        actions: [
          Icon(
            Icons.home,
            size: 50,
          ),
        ],
        title: Name(size: 30, text: 'Control Panel', textColor: Colors.white)
            .getText(),
        leadingWidth: 600,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.elliptical(70, 70),
          ),
        ),
      ),
    );
  }
}
