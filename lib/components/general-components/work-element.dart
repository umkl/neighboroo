import 'package:flutter/material.dart';
import 'package:neighboroo/constants.dart';

class NbWorkElement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Container(
      margin: new EdgeInsets.all(10),
      width: 100,
      height: 130,
      padding: EdgeInsets.only(top: 4.0, left: 4.0, right: 4.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(7)),
        color: box_color,
      ),
      child: Container(
          child: Center(
        child: Text(
          "+sfd",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      )),
    ));
  }
}