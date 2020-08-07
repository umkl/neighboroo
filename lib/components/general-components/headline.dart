import 'package:flutter/material.dart';
import 'package:neighboroo/constants.dart';

class NbHeadline extends StatelessWidget {
  String headlinetext;

  NbHeadline(this.headlinetext);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10.0),
      child: Center(
        child: Text(
          this.headlinetext,
          textAlign: TextAlign.start,
          style: TextStyle(
            color: text_color,
            fontWeight: FontWeight.w900,
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }
}