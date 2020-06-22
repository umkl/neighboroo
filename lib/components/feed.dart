

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:neighboroo/models/user.dart';

class Feed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.6,
      width: MediaQuery.of(context).size.width*1,
      decoration: ,
      child: Row(children: <Widget>[
        FeedChild()
      ],)
    );
  }
}

class FeedChild extends StatelessWidget {
  DateTime time;
  User user;   

  FeedChild([this.time, this.user]);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("spost")
    );
  }
}