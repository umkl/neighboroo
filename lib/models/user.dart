import 'package:flutter/material.dart';

class User {
  final profilepic = Image(image: AssetImage('images/women.png'));
  final String
  name,
  description,
  firstname,
  lastname,
  email,
  address,
  city,
  country,
  password;

  User([this.name, this.description ,this.firstname, this.lastname, this.email, this.address, this.city, this.country, this.password]);
}