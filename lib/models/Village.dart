
import 'package:flutter/material.dart';
import 'package:neighboroo/models/User.dart';

class Village{
  String name;
  String description;
  String picture;
  var users = new List<User>(); 

  Village(this.name, this.description,{this.picture, this.users});

  String getName(){
    return this.name;
  }
}