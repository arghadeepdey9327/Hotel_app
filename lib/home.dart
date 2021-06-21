import 'package:flutter/material.dart';
import 'topAppBar.dart';
import 'container1.dart';
import 'bottom_appBar.dart';

class home_Light extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: topAppBar().getTopAppBar(),
        body: Container1(context: context).getRowWithCard(),
        bottomNavigationBar: bottomAppBar().getappBar(),
      ),
    );
  }
}
