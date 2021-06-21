import 'package:flutter/material.dart';
import 'constant.dart';

class topAppBar1Bottom {
  PreferredSize getRowChilds() {
    return PreferredSize(
      preferredSize: Size.fromHeight(10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.lightbulb,
                    size: 50,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Name(size: 30, text: 'Main Light', textColor: Colors.blue)
                      .getText(),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                color: Colors.brown,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.desktop_windows,
                    size: 50,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Name(size: 30, text: 'Desk Light', textColor: Colors.white)
                      .getText(),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.king_bed,
                    size: 50,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Name(size: 30, text: 'Bed room', textColor: Colors.blue)
                      .getText(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
