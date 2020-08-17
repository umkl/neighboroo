import 'package:flutter/material.dart';
import 'package:neighboroo/components/general-components/chat-element.dart';
import 'package:neighboroo/components/general-components/neighboroo.dart';
import 'package:neighboroo/components/general-components/user.dart';
import 'package:neighboroo/models/Neighboroo.dart';
import 'package:neighboroo/models/Element.dart';
import 'package:neighboroo/models/User.dart';
import 'package:neighboroo/screens/Surface/chat-screen.dart';
import 'package:neighboroo/screens/Surface/main-screen.dart';
import 'package:neighboroo/screens/Surface/service-screen.dart';
import 'package:neighboroo/screens/Surface/share-screen.dart';
import 'package:neighboroo/screens/Surface/transport-screen.dart';

//BACKEND
const backendpath = "http://localhost/Neighboroo-localtest";

//FRONTEND

//color pallete
List<Widget> nbChatContactElements = [
  NbNeighboroo(Neighboroo("Pfaffenhofen","spostn",picture: "assets/images/nb-village.jpg")),
  NbUser(),
  NbNeighboroo(Neighboroo("Pfaffenhofen","spostn",picture: "assets/images/nb-village.jpg")),
];
 List<NbChatElement> nbChatRecentsElements = [
   NbChatElement(1, testUser, DateTime.now(), "test"),
   NbChatElement(1, testUser, DateTime.now(), "test element"),
  ];

const bg  = Color(0xFFEEEEEE);
const globe = Color(0x90797578);

const green  = Color(0xFFAACC00);
const yellow  = Color(0xFFF4D35E);
const blue  = Color(0xFF4A85D0);

//chat colors
const red  = Color(0xFFEF5359);
const button_red  = Color(0x80EF5359);
const button_green  = Color(0xFFAACC00);

// const red  = Color(0xFFEF5359);
// const red  = Color(0xFFEF5359);

const box_color = Color(0x80D2D2D2);
const text_color = Color(0xFFFFFFFF);
const hint_text_color = Color(0x80FFFFFF);

const bar_color = Color(0xFFFFFFF);

const bg_main_object  = Color(0xFF797578);

//shadow pallete
const default_shadow = BoxShadow(
  offset: Offset(0,15),
  blurRadius: 27,
  color: Colors.black12,
);

//format pallete
const outer_padding = 10.0;
const inner_padding = 10.0;

//test object palete
User testUser = User(nickname:"mike",firstname: "Michael", lastname:"Ungar",email: "mail@mail.com", password: "fpass98", description: "i duno... description");
Neighboroo testNeighboroo = new Neighboroo("frizging", "Fritzging is a really cool gegend so do not underestimate itFritzging is a really cool gegend so do not underestimate it.Fritzging is a really cool gegend so do not underestimate it", picture: "assets/images/nb-village.jpg");

List<Widget> screens = <Widget>[
    NbChatScreen(),
    NbShareScreen(),
    NbMainScreen(),
    NbTransportScreen(),
    NbWorkScreen(),
  ];

