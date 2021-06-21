import 'bed_room.dart';
import 'package:flutter/material.dart';
import 'card.dart';

class Container1 {
  BuildContext context;
  Container1({@required this.context});
  Widget getRowWithCard() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Text(
            'All Rooms',
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.w900, color: Colors.blue),
            textAlign: TextAlign.left,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card1(
                  d: 0,
                  l: 10,
                  r: 0,
                  u: 10,
                  size: 140,
                  imgName: '1',
                  title: 'Bed room',
                  subTitle: '4 Lights',
                  onTapped: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Bed_room(),
                      ),
                    );
                  }).getCard(),
              Card1(
                d: 0,
                l: 10,
                r: 10,
                u: 10,
                size: 126,
                imgName: '2',
                title: 'Living room',
                subTitle: '2 Lights',
              ).getCard(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card1(
                      d: 0,
                      l: 10,
                      r: 40,
                      u: 10,
                      size: 150,
                      imgName: '3',
                      title: 'Kitchen',
                      subTitle: '5 Lights')
                  .getCard(),
              Card1(
                      d: 0,
                      l: 0,
                      r: 10,
                      u: 10,
                      size: 155,
                      imgName: '4',
                      title: 'Bathroom',
                      subTitle: '1 Lights')
                  .getCard(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card1(
                      d: 0,
                      l: 8,
                      r: 10,
                      u: 10,
                      size: 160,
                      imgName: '5',
                      title: 'Outdoor',
                      subTitle: '5 Lights')
                  .getCard(),
              Card1(
                      d: 0,
                      l: 10,
                      r: 10,
                      u: 10,
                      size: 160,
                      imgName: '6',
                      title: 'Balcony',
                      subTitle: '2 Lights')
                  .getCard(),
            ],
          ),
        ],
      ),
    );
  }
}
