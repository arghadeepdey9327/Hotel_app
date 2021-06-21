import 'package:flutter/material.dart';
import 'constant.dart';
import 'package:google_fonts/google_fonts.dart';

class Card1 {
  String imgName;
  String title;
  String subTitle;
  Function onTapped;
  int size;
  double l, r, u, d;
  Card1(
      {@required this.imgName,
      @required this.title,
      @required this.subTitle,
      this.onTapped,
      @required this.size,
      @required this.l,
      @required this.r,
      @required this.u,
      @required this.d});
  GestureDetector getCard() {
    return GestureDetector(
        onTap: onTapped,
        child: Container(
          margin: EdgeInsets.only(left: l, bottom: d, right: r, top: u),
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Column(
            children: [
              Picture(picName: '$imgName.png', size: size).getImage(),
              Text(
                title,
                style: TextStyle(
                    fontFamily: GoogleFonts.akronim().toString(),
                    fontSize: 20,
                    fontWeight: FontWeight.w900),
              ),
              Text(
                subTitle,
                style: TextStyle(
                  fontFamily: GoogleFonts.bahianitaTextTheme().toString(),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.yellow,
                ),
              ),
            ],
          ),
        ));
  }
}
// Card(
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(150),
//         ),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             ListTile(
//               leading: Picture(picName: '$imgName.png', size: 150).getImage(),
//               title: Text(
//                 title,
//                 style: TextStyle(
//                     fontFamily: GoogleFonts.akronim().toString(),
//                     fontSize: 20,
//                     fontWeight: FontWeight.w900),
//               ),
//               subtitle: Text(
//                 subTitle,
//                 style: TextStyle(
//                   fontFamily: GoogleFonts.bahianitaTextTheme().toString(),
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.yellow,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),