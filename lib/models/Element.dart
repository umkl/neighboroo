import 'ActionType.dart';
import 'User.dart';

class NbElement{
  final int id;
  final User user;
  final ActionType actionType;
  final DateTime datetime;
  final double price;
  final String message;

  NbElement(this.actionType, this.id, this.user, this.datetime, {this.price, this.message});
}



// SingleChildScrollView(
//                   child: Positioned(
//                    top: 60.0,
//                    left: 120.0,
//                       child: Container(
//                             color: Color(0x80000000),
//                       child: Align(
//                           alignment: Alignment.topCenter,
//                             child: ConstrainedBox(
//                             constraints: BoxConstraints(minWidth: 248, maxWidth: MediaQuery.of(context).size.width * 0.6),
//                             child: Container(
//                                color: Color(0x80000000),
//                                child: Text(this.message,
//                                textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: true),
//                                 style: TextStyle(
//                                    color: Colors.white,
//                                    fontWeight: FontWeight.bold,
//                                    fontSize: 17,
//                                    height: 1,
//                                 )
//                            ),
//                             ),
//                       ),
//                     ),
//                   ),
//                 ),
//               )
