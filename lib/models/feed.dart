import 'user.dart';

enum ActionType{
  service, sell, transport, message
}

class Feed{
  final int id;
  final User user; 
  final ActionType actionType;
  final DateTime datetime;
  final double price;

  Feed(this.id, this.user, this.datetime, this.actionType, {this.price});
}