import 'package:flutter/material.dart';
import 'package:neighboroo/Neighboroo.dart';
import 'package:neighboroo/components/general-category-components/chat-element.dart';
import 'package:neighboroo/constants.dart';

class NbChatRecents extends StatefulWidget {
  
  NbChatRecents({Key key}): super(key: key);
  @override
  _NbChatRecentsState createState() => _NbChatRecentsState();
}

class _NbChatRecentsState extends State<NbChatRecents> {
  List<NbChatElement> nbStateChatElements = Neighboroo.getNbChatRecentsElements();
  
  // NbChatElement nbe = nbStateChatElements[6];
  
  NbChatElement forevery(NbChatElement e){ 
    e.ignoreaction = () => {nbChatRecentsRemovenbStateChatElement(e.id)};
    return e;
  }

  void nbChatRecentsRemovenbStateChatElement(int index){
    setState(() {
      nbStateChatElements.remove(nbStateChatElements[index]);
    });
  }

  @override
  Widget build(BuildContext context) {
      return Container(
        child: Column(
          children: <Widget>[
            //crreate headline
            SizedBox(
              width: double.infinity,
              child: Container(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  "Recents:",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: text_color,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            //chat element box
            ConstrainedBox(
              constraints:BoxConstraints(maxHeight: 900) ,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: nbStateChatElements.length,
                itemBuilder: (context,i){
                  nbStateChatElements[i].ignoreaction = () =>{ setState(()=>{nbStateChatElements.remove(nbStateChatElements[i])})};
                  nbStateChatElements[i].respondaction =()=>{ print("dadsfadsf")};
                  
                  Neighboroo.setnbChatElements(nbStateChatElements);
                  print(i.toString());
                  print(Neighboroo.getNbChatRecentsElements());
                  return nbStateChatElements[i];
                }
                
                ),
            )
          ]
        ),
      );
  }
}




// return Container(
//       width: MediaQuery.of(context).size.width,
//       margin: EdgeInsets.all(7.0),
//       decoration: BoxDecoration(
//           color: box_color,
//           borderRadius: BorderRadius.all(Radius.circular(7.0))),
//       child: ConstrainedBox(
//         constraints: BoxConstraints(minHeight: 120, maxHeight: 120),
//         child: Stack(
//           children: <Widget>[
//             Positioned(
//               top: 9,
//               left: 10,
//               child: ClipRRect(
//                 borderRadius: BorderRadius.all(Radius.circular(3)),
//               ),
//             ),
//             Positioned(
//                 top: 15,
//                 left: 125,
//                 child: Text("username",
//                     style: TextStyle(
//                         color: text_color, fontWeight: FontWeight.bold))),
//             Positioned(
//                 top: 15,
//                 left: 200,
//                 child: ConstrainedBox(
//                     constraints: BoxConstraints(
//                         maxWidth: MediaQuery.of(context).size.width * 0.45,
//                         maxHeight: 55),
//                     child: Text("l.description",
//                         style: TextStyle(
//                             color: text_color,
//                             fontWeight: FontWeight.normal)))),
//             Positioned(
//               bottom: 8,
//               right: 10,
//               height: 35.0,
//               width: 96.0,
//               child: DecoratedBox(
//                 decoration: ShapeDecoration(
//                     shape: RoundedRectangleBorder(
//                         side: BorderSide(
//                             color: button_red,
//                             width: 10,
//                             style: BorderStyle.none),
//                         borderRadius: BorderRadius.all(Radius.circular(7))),
//                     color: button_red),
//                 child: Theme(
//                   data: Theme.of(context).copyWith(
//                       buttonTheme: ButtonTheme.of(context).copyWith(
//                           materialTapTargetSize:
//                               MaterialTapTargetSize.shrinkWrap)),
//                   child: FlatButton(
//                     materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
//                     shape: RoundedRectangleBorder(
//                         side: BorderSide(
//                             color: button_red,
//                             width: 10,
//                             style: BorderStyle.none)),
//                     child: Text(
//                       'Message',
//                       style: TextStyle(color: text_color),
//                     ),
//                     onPressed: () => {},
//                   ),
//                 ),
//               ),
//             ),
//             Positioned(
//                 bottom: 8,
//                 right: 115,
//                 height: 35.0,
//                 width: 106.0,
//                 child: DecoratedBox(
//                   decoration: ShapeDecoration(
//                       shape: RoundedRectangleBorder(
//                           side: BorderSide(
//                               color: button_red,
//                               width: 10,
//                               style: BorderStyle.none),
//                           borderRadius: BorderRadius.all(Radius.circular(7))),
//                       color: button_red),
//                   child: Theme(
//                     data: Theme.of(context).copyWith(
//                         buttonTheme: ButtonTheme.of(context).copyWith(
//                             materialTapTargetSize:
//                                 MaterialTapTargetSize.shrinkWrap)),
//                     child: FlatButton(
//                       materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
//                       shape: RoundedRectangleBorder(
//                           side: BorderSide(
//                               color: button_red,
//                               width: 10,
//                               style: BorderStyle.none
//                             )
//                           ),
//                       child: Text(
//                         'Broadcast',
//                         style: TextStyle(color: text_color),
//                       ),
//                       onPressed: () => {},
//                     ),
//                   ),
//                 )
//               ),
//           ],
//         ),
//       ),
//     );