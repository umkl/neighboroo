import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:neighboroo/components/chat-screen-components/chat-contacts.dart';
import 'package:neighboroo/components/chat-screen-components/chat-createbar.dart';
import 'package:neighboroo/models/AssetElement.dart';
import 'package:neighboroo/models/Village.dart';
import 'package:neighboroo/constants.dart';
import 'package:neighboroo/models/User.dart';

class NbChatScreen extends StatelessWidget {
  Color colortheme = red;
  Color backgroundtheme = Color(0xFFEF5359);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10.0),
            child: Text(
              "Create:",
              textAlign: TextAlign.start,
              style: TextStyle(
                color: text_color,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            child: NbChatCreateBar(),),
          Container(
            padding: EdgeInsets.only(left: 10.0),
            child: Text(
              "Recents:",
              textAlign: TextAlign.start,
              style: TextStyle(
                color: text_color,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10.0),
            child: Text(
              "Contacts:",
              textAlign: TextAlign.start,
              style: TextStyle(
                color: text_color,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: 270.0,
            child: ListView(
              padding: EdgeInsets.all(1.0),
              children: <Widget>[ContactsNeighboroo(), ContactsNeighboroo()]),
            ),
        ],
      ),
    );
  }
}
