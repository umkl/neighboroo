import 'package:flutter/material.dart';

class User {
  final profilepic = Image(image: AssetImage('images/women.png'));
  String
  nickname,
  description,
  firstname,
  lastname,
  email,
  address,
  city,
  country,
  password;
  User({this.nickname, this.firstname, this.lastname, this.email, this.password, this.description});
}