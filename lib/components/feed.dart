

import 'package:flutter/material.dart';
import 'package:neighboroo/constants.dart';
import 'package:neighboroo/models/feed.dart';
import 'package:neighboroo/models/user.dart';

class Feed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<FeedElement> FeedList = [FeedElement(12, user, DateTime.now(), ActionType.message),FeedElement(12, user, DateTime.now(), ActionType.sell)];
    return Expanded(
          child: ListView.builder(
            itemCount: FeedList.length,
          itemBuilder: (context, i){
            return FeedList[i];
        },      
      ),
    );
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