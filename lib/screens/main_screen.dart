import 'package:flutter/material.dart';
import 'package:neighboroo/components/village.dart';
import 'package:neighboroo/constants.dart';
import 'package:neighboroo/components/head.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bg_main,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: HeadBar(),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget> [
            Village(imagePath: 'assets/images/nb-village.jpg'),
            Village(imagePath: 'assets/images/nb-village.jpg'),
            
            Container(
              width: 100.0,
              height: 200.0,
              decoration: BoxDecoration(
                color: Colors.red,              
              ),
              child: ClipRRect(          
        borderRadius: BorderRadius.all(Radius.circular(7)),
        child: Image(
          image: AssetImage('assets/images/nb-village.jpg'),
          width: 100.0,
          height: 100.0,
        ),
              ),
            ),
        ]
        ) 
        );
  }
}

// Form(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               TextFormField(
//                 decoration: const InputDecoration(
//                   hintText: 'Enter your email',
//                 ),
//                 validator: (value) {
//                   if (value.isEmpty) {
//                     return 'Please enter some text';
//                   }
//                   return null;
//                 },
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 16.0),
//                 child: RaisedButton(
//                   onPressed: () {
//                     // Validate will return true if the form is valid, or false if
//                   },
//                   child: Text('Submit'),
//                 ),
//               ),
//             ],
//           ),
//         )
