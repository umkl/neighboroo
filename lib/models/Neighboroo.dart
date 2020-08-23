import 'package:flutter/material.dart';
import 'package:neighboroo/models/User.dart';

class Neighboroo {
  String _name;
  String _description;
  String _country;
  List<User> admins;
  List<User> users;
  String picture;
  DateTime date_created;

  Neighboroo(this._name, this._description, {this.picture, this.users, this.admins});

  get description {
    return this._description;
  }

  get name {
    return this._name;
  }

  Widget getPicture(double height, double width) {
    if (picture == null) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(7.0),
        child: Image.asset(
          "assets/images/nb-village.jpg",
          height: height,
          width: width,
        ),
      );
    } else {
      return ClipRRect(
        borderRadius: BorderRadius.circular(7.0),
        child: Image.asset(
          picture,
          height: height,
          width: width,
        ),
      );
    }
  }
}
