import 'package:flutter/material.dart';
import 'package:neighboroo/constants.dart';

class NbCreateMessageContacts extends StatefulWidget {
  @override
  _NbCreateMessageContactsState createState() => _NbCreateMessageContactsState();
}

class _NbCreateMessageContactsState extends State<NbCreateMessageContacts> {
  
  _NbCreateMessageContactsState();
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          width: double.infinity,
          child: Container(
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
        ),
        Container(
          child: Text("here is a contact item")
        ),
      ],
    );
  }
}