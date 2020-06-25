import 'package:flutter/material.dart';

import '../constants.dart';
import 'user.dart';

enum ActionType{
  service, sell, transport, message
}

class FeedElement extends StatelessWidget{
  final int id;
  final User user; 
  final ActionType actionType;
  final DateTime datetime;
  final double price;

  FeedElement(this.id, this.user, this.datetime, this.actionType, {this.price});

  @override
  Widget build(BuildContext context) {    
    switch(actionType){
      case ActionType.message:
        return FeedActionMessage();
        break;
      case ActionType.service:
        return FeedActionService();
        break;
      case ActionType.sell:
        return FeedActionSell();
        break;
      case ActionType.transport:
        return FeedActionTransport(); 
        break;
    }
  }
}

class FeedActionMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
      margin: new EdgeInsets.all(10),
      width: 100,
      height: 130,
      padding: EdgeInsets.only(top: 4.0, left: 4.0, right: 4.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(7)),
        color: box_color,
      ),
      child: Container(
        child: Center(child: Text("+",
          style: TextStyle(
            fontSize: 30, 
            color: Colors.white 
          ),
        ),
        )
      ),
    )
    );
  }
}

class FeedActionService extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Container(
      child: Container(
      margin: new EdgeInsets.all(10),
      width: 100,
      height: 130,
      padding: EdgeInsets.only(top: 4.0, left: 4.0, right: 4.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(7)),
        color: box_color,
      ),
      child: Container(
        child: Center(child: Text("+",
          style: TextStyle(
            fontSize: 30, 
            color: Colors.white 
          ),
        ),
        )
      ),
    )
    );
  }
}
class FeedActionSell extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Container(
      child: Container(
      margin: new EdgeInsets.symmetric(horizontal: 10),
      width: 100,
      height: 130,
      padding: EdgeInsets.only(top: 4.0, left: 4.0, right: 4.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(7)),
        color: box_color,
      ),
      child: Container(
        child: Center(child: Text("+",
          style: TextStyle(
            fontSize: 30, 
            color: Colors.white 
          ),
        ),
        )
      ),
    )
    );
  }
}
class FeedActionTransport extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
      margin: new EdgeInsets.symmetric(horizontal: 10),
      width: 100,
      height: 130,
      padding: EdgeInsets.only(top: 4.0, left: 4.0, right: 4.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(7)),
        color: box_color,
      ),
      child: Container(
        child: Center(child: Text("+",
          style: TextStyle(
            fontSize: 30, 
            color: Colors.white 
          ),
        ),
        )
      ),
    )
    );
  }
}