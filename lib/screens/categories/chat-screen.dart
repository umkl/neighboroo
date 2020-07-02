import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:neighboroo/components/chat-screen-components/chat-contacts.dart';
import 'package:neighboroo/components/chat-screen-components/chat-createbar.dart';
import 'package:neighboroo/components/chat-screen-components/chat-recents.dart';
import 'package:neighboroo/models/AssetElement.dart';
import 'package:neighboroo/models/Village.dart';
import 'package:neighboroo/constants.dart';
import 'package:neighboroo/models/User.dart';

class NbChatScreen extends StatelessWidget {
  
  //values
  Color colortheme = red;
  Color buttonColor = red;
  Color backgroundtheme = Color(0xFFEF5359);
  List<NbChatRecents> nbrecents  = [NbChatRecents(),NbChatRecents()];
                  
                
  @override
  Widget build(BuildContext context) {
    return Container(
      color: colortheme,
      child: ListView(
        
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10.0),
            child: Center(
              child: Text(
                "NeighborooChat",
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: text_color,
                  fontWeight: FontWeight.w900,
                  fontSize: 20.0,
                  
                ),
              ),
            ),
          ),
          
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
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                child: NbChatCreateBar(),
              ),
            ],
          ),
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
            padding: EdgeInsets.all(1.0),
            child: Column(
              children: <Widget>[
                NbChatRecents(),
                NbChatRecents(),
                ]
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
          ConstrainedBox(
            constraints: BoxConstraints(minHeight: 100.0, maxHeight: 500.0),
            child: Container(
              padding: EdgeInsets.all(1.0),
              child: Column(
                children: <Widget>[ContactsNeighboroo(), ContactsNeighboroo(),ContactsNeighboroo()]),
              ),
          ),
        ],
      ),
    );
  }
}
