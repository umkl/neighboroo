import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:neighboroo/Neighboroo.dart';
import 'package:neighboroo/components/general-category-components/button.dart';
import 'package:neighboroo/components/chat-screen-components/ChatType.dart';
import 'package:neighboroo/components/chat-screen-components/chat-contacts.dart';
import 'package:neighboroo/components/chat-screen-components/chat-create-components/chat-create-event.dart';
import 'package:neighboroo/components/chat-screen-components/chat-create-components/chat-create-message.dart';
import 'package:neighboroo/components/chat-screen-components/chat-create-components/chat-create-news.dart';
import 'package:neighboroo/components/chat-screen-components/chat-create.dart';
import 'package:neighboroo/components/chat-screen-components/chat-recents.dart';
import 'package:neighboroo/components/general-category-components/headline.dart';
import 'package:neighboroo/models/AssetElement.dart';
import 'package:neighboroo/models/Village.dart';
import 'package:neighboroo/constants.dart';
import 'package:neighboroo/models/User.dart';

enum WidgetMarker { graph, stats, info }

class NbChatScreen extends StatefulWidget {
  Color colortheme = red;
  Color buttonColor = red;
  Color backgroundtheme = Color(0xFFEF5359);

  @override
  _NbChatScreenState createState() => _NbChatScreenState();
}

class _NbChatScreenState extends State<NbChatScreen> {
  //values
  ChatType screenType = ChatType.main;
  NbChatCreateBar ncb;

  //main

  WidgetMarker selectedWidgetMarker = WidgetMarker.graph;

  @override
  Widget build(BuildContext context) {
    switch(screenType){
      case ChatType.main:
        return getNbMainChatScreen();
      case ChatType.message:
        return NbChatCreateMessage(backbuttonfunction: (){setState(() {
          screenType = ChatType.main;
        });},);
      case ChatType.news:
        return NbChatCreateNews();
      case ChatType.event:
        return NbChatCreateEvent();
    }
  }

  Widget getCustomContainer() {
  switch (selectedWidgetMarker) {
    case WidgetMarker.graph:
      return getGraphWidget();
    case WidgetMarker.stats:
      return getStatsWidget();
    case WidgetMarker.info:
      return getInfoWidget();
  }

  return getGraphWidget();
}

    Widget getGraphWidget() {
    return Container(
      height: 200,
      color: Colors.red,
    );
  }

  Widget getStatsWidget() {
    return Container(
      height: 300,
      color: Colors.green,
    );
  }

  Widget getInfoWidget() {
    return Container(
      height: 500,
      color: Colors.blue,
    );
  }

  //       switch(screenType){
  //   case ChatType.main:
  //       return getNbMainChatScreen();
  //     break;
  //   case ChatType.message:
  //       return NbChatCreateMessage();
  //     break;
  // }

// handling the state

  @override
  void initState() {
    super.initState();
    ncb = NbChatCreateBar();
  }

  //getter methods

  Widget getNbMainChatScreen() {
    return Container(
      color: widget.colortheme,
      child: ListView(
        children: <Widget>[
          NbHeadline("NeighborooChat"),
          NbChatCreateBar(
            message: (){ setState(() {screenType = ChatType.message;});},
            event: (){ setState(() {screenType = ChatType.event;});},
            news: (){ setState(() {screenType = ChatType.news;});},
          ),
          NbChatRecents(),
        ],
      ),
    );
  }

  //setter methods

}

class NbChatScreenHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
