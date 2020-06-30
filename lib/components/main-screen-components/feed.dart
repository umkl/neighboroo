

import 'package:flutter/material.dart';
import 'package:neighboroo/components/general-category-components/chat-element.dart';
import 'package:neighboroo/components/general-category-components/sell-element.dart';
import 'package:neighboroo/components/general-category-components/transport-element.dart';
import 'package:neighboroo/components/general-category-components/work-element.dart';
import 'package:neighboroo/constants.dart';
import 'package:neighboroo/models/ActionType.dart';
import 'package:neighboroo/models/Element.dart';

class Feed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<FeedElement> FeedList = [FeedElement(NbElement(12, user, DateTime.parse("2020-06-27 14:47:00"), ActionType.message, message: "Hello, your cat is in our garden")),FeedElement(NbElement(12, user, DateTime.now(), ActionType.sell))];
    return Expanded(        
          child: Container(
            color: bg,
            height: MediaQuery.of(context).size.height * 0.5,
            child: ListView.builder(
              itemCount: FeedList.length,
            itemBuilder: (context, i){
              return FeedList[i];
        },      
      ),
          ),
    );
  }
}

class FeedElement extends StatelessWidget {
  NbElement e;
  FeedElement(this.e);

 @override
  Widget build(BuildContext context) {
    switch (e.actionType) {
      case ActionType.message:
        return NbChatElement(e.id, e.user, e.datetime, e.message);
        break;
      case ActionType.service:
        return NbSellElement();
        break;
      case ActionType.sell:
        return NbTransportElement();
        break;
      case ActionType.transport:
        return NbWorkElement();
        break;
    }
  }
}



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