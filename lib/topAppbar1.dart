import 'package:flutter/material.dart';
import 'constant.dart';

class topAppBar1 {
  PreferredSize gettopAppBar1() {
    return PreferredSize(
      preferredSize: Size.fromHeight(126),
      child: AppBar(
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.lightbulb,
                        color: Colors.blue,
                        size: 50,
                      ),
                      Name(size: 30, text: 'Main Light', textColor: Colors.blue)
                          .getText()
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    color: Colors.brown,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.desktop_windows,
                        color: Colors.white,
                        size: 50,
                      ),
                      Name(
                              size: 30,
                              text: 'Desk Light',
                              textColor: Colors.white)
                          .getText()
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.king_bed,
                        color: Colors.blue,
                        size: 50,
                      ),
                      Name(size: 30, text: 'Bed room', textColor: Colors.blue)
                          .getText()
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        actions: [
          Icon(
            Icons.lightbulb,
            size: 50,
          ),
        ],
        title:
            Name(size: 30, text: 'Bed room', textColor: Colors.white).getText(),
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
