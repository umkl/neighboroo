import 'package:flutter/material.dart';
import 'package:neighboroo/components/button.dart';
import 'package:neighboroo/components/main-screen-components/feed.dart';
import 'package:neighboroo/constants.dart';
import 'package:neighboroo/models/AssetElement.dart';
import 'package:neighboroo/models/User.dart';

class NbChatElement extends StatefulWidget {
  final int id;
  final User user;
  final DateTime datetime;
  final String message;
  var respondaction;
  var ignoreaction;

  NbChatElement(this.id, this.user, this.datetime, this.message,{this.respondaction,this.ignoreaction});

  @override
  _NbChatElementState createState() =>
      _NbChatElementState(this.id, this.user, this.datetime, this.message, respondactionS: this.respondaction, ignoreactionS: this.ignoreaction);
}

class _NbChatElementState extends State<NbChatElement> {
  final int idS;
  final User userS;
  final DateTime datetimeS;
  final String messageS;
  var respondactionS;
  var ignoreactionS;
  

  _NbChatElementState(this.idS, this.userS, this.datetimeS, this.messageS,{this.respondactionS, this.ignoreactionS});

  
  @override
  Widget build(BuildContext context) {
    String minute = datetimeS.minute > 9 ? datetimeS.minute.toString() : "0" + datetimeS.minute.toString();

    return Container(
      margin: EdgeInsets.all(7.0),
      decoration: BoxDecoration(
        color: box_color,
        borderRadius: BorderRadius.all(Radius.circular(7.0)),
      ),
      child: Column(
        children: <Widget>[
          //topbar
          Container(
            child: (Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    AssetElement('assets/icons/nb-icon-chat-light-1.png',
                        size: 20),
                    Text("Chat", style: TextStyle(
                      color: text_color,
                    ),)
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  child: Text(this.datetimeS.day.toString() + "." + this.datetimeS.month.toString()+ ". " +this.datetimeS.hour.toString() + ":" + minute,
                      style: TextStyle(color: text_color, fontWeight: FontWeight.bold),),
                ),
              ],
            )),
          ),
          //middlebar
          Container(
            child: Column(
              children: <Widget>[
                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // ClipRRect(
                      //   borderRadius: BorderRadius.all(Radius.circular(7.0)),
                      //   child: AssetElement("assets/images/nb-village.jpg", size: 100)),

                      Container(
                        margin: EdgeInsets.all(7.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          child: Image(
                            image: AssetImage('assets/images/nb-profilepic.png'),
                            width: 80.0,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(7.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              child: Text(
                                userS.username,
                                style: TextStyle(
                                  color: text_color,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 20,
                                ),
                                ConstrainedBox(
                                  constraints: BoxConstraints(
                                      maxWidth:
                                          MediaQuery.of(context).size.width *
                                              0.6),
                                  child: Text(messageS,style: TextStyle(color: text_color),),
                                ),
                              ],
                            ),
                            //buttonrow
                            Container(
                              width: MediaQuery.of(context).size.width * 0.7,
                              
                              child: Container(
                                
                                margin: EdgeInsets.all(7.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(right: 5.0),
                                      child: NbButton(
                                          buttonname: "ignore", buttoncolor: button_red, buttonfunction: ignoreactionS),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 5.0),
                                      child: NbButton(
                                          buttonname: "respond", buttoncolor: button_red, buttonfunction: respondactionS,),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ]
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// class NbChatElement extends StatelessWidget {
//   final int id;
//   final User user;
//   final DateTime datetime;
//   final String message;

//   NbChatElement(this.id, this.user, this.datetime, this.message);

//   @override
//   Widget build(BuildContext context) {
//     DateTime now = DateTime.now();
//     Duration duration = now.difference(datetime);

//     return ConstrainedBox(
//       constraints: BoxConstraints(minHeight: 135),
//       child: Container(
//         height: 135,
//         margin: new EdgeInsets.all(10),
//         //height: 125.0,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.all(Radius.circular(7)),
//           color: box_color,
//         ),
//         child: Stack(
//           children: <Widget>[
//             Positioned(
//               top: 1,
//               left: 2,
//               child: AssetElement('assets/icons/nb-icon-chat-light.png',
//                   width: 20.0, height: 20.0),
//             ),
//             Positioned(
//                 child: Padding(
//                   padding: const EdgeInsets.all(1.0),
//                   child: Text(
//                     "chat",
//                     style: TextStyle(
//                       fontSize: 13.0,
//                       fontWeight: FontWeight.bold,
//                       color: text_color,
//                     ),
//                   ),
//                 ),
//                 top: 2.7,
//                 left: 30),
//             Positioned(
//                 child: Text(
//                   duration.inMinutes > 59
//                       ? (duration.inHours % 60).toString() +
//                           ":" +
//                           (duration.inMinutes % 60).toString() +
//                           ":" +
//                           (duration.inSeconds % 60).toString()
//                       : (duration.inMinutes % 60).toString() +
//                           ":" +
//                           (duration.inSeconds % 60).toString(),
//                   style: TextStyle(
//                     color: text_color,
//                     fontWeight: FontWeight.w100,
//                   ),
//                 ),
//                 top: 2.7,
//                 right: 8),
//             Positioned(
//               top: 34,
//               left: 10,
//               child: ClipRRect(
//                 borderRadius: BorderRadius.all(Radius.circular(7)),
//                 child: Image(
//                   image: AssetImage('assets/images/nb-profilepic.png'),
//                   width: 70.0,
//                 ),
//               ),
//             ),
//             Positioned(
//               top: 30,
//               left: 95,
//               child: Text(
//                 "from " + this.user.username,
//                 style: TextStyle(
//                     color: text_color,
//                     fontSize: 15,
//                     fontWeight: FontWeight.w500),
//               ),
//             ),
//             Positioned(
//               top: 60.0,
//               left: 120.0,
//               child: Container(
//                 //  color: Color(0x80000000),
//                 child: Align(
//                   alignment: Alignment.topCenter,
//                   child: ConstrainedBox(
//                     constraints: BoxConstraints(
//                         minWidth: 248,
//                         maxWidth: MediaQuery.of(context).size.width * 0.6),
//                     child: Container(
//                       //  color: Color(0x80000000),
//                       child: Text(this.message,
//                           textHeightBehavior: TextHeightBehavior(
//                               applyHeightToFirstAscent: true),
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 17,
//                             height: 1,
//                           )),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
