import 'constant.dart';
import 'package:flutter/material.dart';
import 'topAppBar1.dart';
import 'colorPicker.dart';
import 'scenes.dart';
import 'bottom_appBar.dart';

class Bed_room extends StatefulWidget {
  @override
  _Bed_roomState createState() => _Bed_roomState();
}

class _Bed_roomState extends State<Bed_room> {
  Color light_color;
  Color bulb_color;
  int valuei = 100;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: topAppBar1().gettopAppBar1(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Name(size: 30, text: 'Intensity', textColor: Colors.black87)
                .getText(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.lightbulb_outline_rounded,
                  size: 70,
                ),
                Slider(
                    value: valuei.toDouble(),
                    min: 100,
                    max: 900,
                    divisions: 100,
                    onChanged: (value) {
                      setState(() {
                        valuei = value.toInt();
                        if (value % 100 == 0)
                          light_color = Colors.amber[valuei];
                      });
                    }),
                Icon(
                  Icons.lightbulb_outlined,
                  size: 70,
                  color: light_color,
                ),
              ],
            ),
            Name(size: 30, text: 'Colors', textColor: Colors.black87).getText(),
            Icon(
              Icons.lightbulb_outlined,
              size: 60,
              color: bulb_color,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                    onTap: () {
                      setState(() {
                        bulb_color = Colors.orange;
                      });
                    },
                    child: colorPicker(color: Colors.orange).getColorPicker()),
                SizedBox(width: 10),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        bulb_color = Colors.green;
                      });
                    },
                    child: colorPicker(color: Colors.green).getColorPicker()),
                SizedBox(width: 10),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        bulb_color = Colors.blue;
                      });
                    },
                    child: colorPicker(color: Colors.blue).getColorPicker()),
                SizedBox(width: 10),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        bulb_color = Colors.purple;
                      });
                    },
                    child: colorPicker(color: Colors.purple).getColorPicker()),
                SizedBox(width: 10),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        bulb_color = Colors.redAccent;
                      });
                    },
                    child:
                        colorPicker(color: Colors.redAccent).getColorPicker()),
                SizedBox(width: 10),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        bulb_color = Colors.brown;
                      });
                    },
                    child: colorPicker(color: Colors.brown).getColorPicker()),
                SizedBox(width: 10),
                Container(
                  child: Icon(
                    Icons.add,
                    size: 50,
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                )
              ],
            ),
            Name(text: 'Scenes', size: 40, textColor: Colors.blue).getText(),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Scenes(
                        text: 'Birthday',
                        body_color: Colors.orange,
                        text1: 'Party',
                        body_color1: Colors.purple,
                        height: 20)
                    .getRowWithScenes(),
                SizedBox(
                  height: 10,
                ),
                Scenes(
                        text: 'Relax',
                        body_color: Colors.blueAccent,
                        text1: 'Fun',
                        body_color1: Colors.green,
                        height: 50)
                    .getRowWithScenes(),
              ],
            )
          ],
        ),
        bottomNavigationBar: bottomAppBar().getappBar(),
      ),
    );
  }
}
