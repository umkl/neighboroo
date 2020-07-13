

import 'package:flutter/material.dart';
import 'package:neighboroo/components/general-category-components/chat-element.dart';
import 'package:neighboroo/components/general-category-components/sell-element.dart';
import 'package:neighboroo/components/general-category-components/transport-element.dart';
import 'package:neighboroo/components/general-category-components/work-element.dart';
import 'package:neighboroo/constants.dart';
// import 'package:neighboroo/database/database.dart';
import 'package:neighboroo/models/ActionType.dart';
import 'package:neighboroo/models/Element.dart';





class Feed extends StatefulWidget {

  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  // Map<String, String> newUser = {};
  // Future _userFuture;

  // @override
  // void initState(){
  //   super.initState();
  //   _userFuture = getUser();
  // }

  // getUser() async{
  //   final _userData = await NbDatabaseProivder.db.getUser();
  //   return _userData;
  // }

  // static int feedElementListSize = 0;
  // static List<NbElement> FeedElementList = [
  //   NbElement(ActionType.message, feedElementListSize++, user, DateTime.parse("2020-06-27 14:02:00"),  message: "Hello, your cat is in our garden\nHello, your cat is in our garden\nHello, your cat is in our garden\nHello, your cat is in our garden\nHello, your cat is in our garden\nHello, your cat is in our garden"),
  //   NbElement(ActionType.sell, feedElementListSize++, user, DateTime.parse("2020-06-27 14:02:00"),  message: "Hello, your cat is in our garden\nHello, your cat is in our garden\nHello, your cat is in our garden\nHello, your cat is in our garden\nHello, your cat is in our garden\nHello, your cat is in our garden"),
  // ];
  
  // static void removeFeedElement(int index){
  //   FeedElementList.remove(FeedElementList[index]);
  // }
  @override
  Widget build(BuildContext context) {
    return Text("afdsfsd");

    // return FutureBuilder(
    //   future: _userFuture,
    //   builder: (context, snapshot){
    //     switch (snapshot.connectionState){
    //       case ConnectionState.none:
          
    //       case ConnectionState.waiting:
    //       case ConnectionState.active:
    //       case ConnectionState.done:
    //     }
    //   }
    //   );

    // Expanded(
    //       child: Container(
    //           color: bg,
    //           child: Container(
              
    //           margin: EdgeInsets.symmetric(vertical: 5.0),
    //           height: MediaQuery.of(context).size.height * 0.5,
    //           child: ListView.builder(
    //             itemCount: FeedElementList.length,
    //           itemBuilder: (context, i){
    //             switch (FeedElementList[i].actionType) {
    //               case ActionType.message:
    //                 return NbChatElement(FeedElementList[i].id, FeedElementList[i].user, FeedElementList[i].datetime, FeedElementList[i].message);
    //                 break;
    //               case ActionType.sell:
    //                 return NbSellElement(FeedElementList[i].id, FeedElementList[i].user, FeedElementList[i].datetime, FeedElementList[i].message);
    //                 break;
    //               case ActionType.work:
    //                 return NbTransportElement();
    //                 break;
    //               case ActionType.transport:
    //                 return NbWorkElement();
    //                 break;
    //             }
    //           },
    //     ),
    //   ),
    //       ),
    // );
  }
}

// class FeedElement extends StatelessWidget {
//   NbElement e;
//   FeedElement(this.e);

//  @override
//   Widget build(BuildContext context) {
//     switch (e.actionType) {
//       case ActionType.message:
//         return NbChatElement(e.id, e.user, e.datetime, e.message);
//         break;
//       case ActionType.service:
//         return NbSellElement();
//         break;
//       case ActionType.sell:
//         return NbTransportElement();
//         break;
//       case ActionType.transport:
//         return NbWorkElement();
//         break;
//     }
//   }
// }



// class FeedChild extends StatelessWidget {
//   DateTime time;
//   User user;
//   Feed feed;   

//   FeedChild([this.time, this.user, this.feed]);

//   @override
//   Widget build(BuildContext context) {
//     return Container(

      
      
//       color: Colors.red,
//       child: Column(
//         children: <Widget>[
//           Expanded(child: Container(
//             color: Colors.blue,
//           ))
//         ],
//       ),
//     );
//   }
// }