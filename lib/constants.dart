import 'package:flutter/material.dart';
import 'package:neighboroo/models/feed.dart';
import 'package:neighboroo/models/user.dart';

const bg_main  = Color(0xFFFFFFFF);
const bg_main_object  = Color(0xFF797578);
const bg_green  = Color(0xFFAACC00);
const bg_yellow  = Color(0xFFF4D35E);
const bg_blue  = Color(0xFF5390D9);
const bg_red  = Color(0xFFEF5359);

const text_color = Color(0xFFFFFFFF);

const box_color = Color(0x80D2D2D2);

const outer_padding = 20.0;
const inner_padding = 10.0;

User user = User("mike", "normal dude" ,"michael", "ungar", "mikgmail.com", "this.address", "this.city", "this.country", "this.password");


const default_shadow = BoxShadow(
  offset: Offset(0,15),
  blurRadius: 27,
  color: Colors.black12,
);