import 'package:flutter/material.dart';
import 'package:neighboroo/constants.dart';
import 'package:neighboroo/models/Village.dart';

// Container(
//             padding: EdgeInsets.only(left: 10.0),
//             child: Text(
//               "Contacts:",
//               textAlign: TextAlign.start,
//               style: TextStyle(
//                 color: text_color,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//           ConstrainedBox(
//             constraints: BoxConstraints(minHeight: 100.0, maxHeight: 500.0),
//             child: Container(
//               padding: EdgeInsets.all(1.0),
//               child: Column(
//                 children: <Widget>[ContactsNeighboroo(), ContactsNeighboroo(),ContactsNeighboroo()]),
//               ),
//           ),

class ContactsNeighboroo extends StatefulWidget {
  
  @override
  _ContactsNeighborooState createState() => _ContactsNeighborooState(testvillage);
}

class _ContactsNeighborooState extends State<ContactsNeighboroo> {
  Village l;
  _ContactsNeighborooState(this.l);
  
  @override
  Widget build(BuildContext context) {
    return 
    Container(
      
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.all(7.0),
      decoration: BoxDecoration(
        color: box_color,
        borderRadius: BorderRadius.all(Radius.circular(7.0))
      ),
      child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: 120, maxHeight: 120),
              child: Stack(
          children: <Widget>[
            Positioned(
              top: 9,
              left: 10,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(3)),
                child: Image(
                image: AssetImage(l.picture),          
                width: 100,
                height: 100,
                fit: BoxFit.cover
                )
              ),
              ),
            Positioned(
              top: 15,
              left: 125,
              child: Text(l.name,style: TextStyle(color: text_color, fontWeight: FontWeight.bold))
            ),
            Positioned(
              top: 15,
              left: 200,
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.45, maxHeight: 55),
                child: Text(l.description,style: TextStyle(color: text_color, fontWeight: FontWeight.normal)))
            ),
            Positioned(
              bottom: 8,
              right: 10,
              height: 35.0,
              width: 96.0,
              child: DecoratedBox(
                decoration:
                    ShapeDecoration(shape: RoundedRectangleBorder(side: BorderSide(color: button_red, width: 10, style: BorderStyle.none), borderRadius: BorderRadius.all(Radius.circular(7))), color: button_red),
                child: Theme(
                  data: Theme.of(context).copyWith(
                      buttonTheme: ButtonTheme.of(context).copyWith(
                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap)),
                  child: FlatButton(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    shape: RoundedRectangleBorder(side: BorderSide(color: button_red, width: 10, style: BorderStyle.none)),
                    child: Text('Message', style: TextStyle(color: text_color),),
                    onPressed: () => {},
                  ),
                ),
              ),
              ),
              // child: FlatButton(
              //   colorBrightness: Brightness.dark,
              //   color: blue,
              //   onPressed: null,
              //   child: Text('Button', style: TextStyle(
              //       color: text_color
              //     )
              //   ),
              //   textColor: Colors.white,
              //   shape: RoundedRectangleBorder(side: BorderSide(
              //     color: red,
              //     width: 1,
              //     style: BorderStyle.none
              //   ),
              //   borderRadius: BorderRadius.circular(7)),
              // )
                  
              Positioned(
              bottom: 8,
              right: 115,
              height: 35.0,
              width: 106.0,
              child: DecoratedBox(
                decoration:
                    ShapeDecoration(shape: RoundedRectangleBorder(side: BorderSide(color: button_red, width: 10, style: BorderStyle.none), borderRadius: BorderRadius.all(Radius.circular(7))), color: button_red),
                child: Theme(
                  data: Theme.of(context).copyWith(
                      buttonTheme: ButtonTheme.of(context).copyWith(
                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap)),
                  child: FlatButton(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    shape: RoundedRectangleBorder(side: BorderSide(color: button_red, width: 10, style: BorderStyle.none)),
                    child: Text('Broadcast', style: TextStyle(color: text_color),),
                    onPressed: () => {},
                  ),
                ),
              )
              ),
            ],
        ),
      ),
    );
  }
}