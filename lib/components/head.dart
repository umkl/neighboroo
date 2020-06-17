import 'package:flutter/material.dart';
import 'package:neighboroo/constants.dart';

class HeadBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title:
          Row(
          mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        Container(
          margin: new EdgeInsets.only(
              bottom: 0.0, top: 2.0, left: 0.0, right: 10.0),
          width: MediaQuery.of(context).size.width * 0.76,
          height: 40.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(7)),
            color: box_color,
          ),
          child: Text("dd"),
        ),
        Container(
          margin: new EdgeInsets.only(
              bottom: 0.0, top: 2.0, left: 3.0, right: 0.0),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(7)),
            child: Image(
              image: AssetImage('assets/images/nb-profilepic.png'),
              width: 42.0,
              height: 42.0,
            ),
          ),
        ),
      ]),
    );
  }
}
