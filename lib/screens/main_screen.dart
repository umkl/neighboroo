import 'package:flutter/material.dart';
import 'package:neighboroo/constants.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg_main,
            appBar: AppBar(
              title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
              
          Container(
            
            margin: new EdgeInsets.only(bottom: 10.0, top: 5.0, left: 5.0, right: 5.0),
            width: MediaQuery.of(context).size.width * 0.7,
            height: 40.0,
            
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(7)),
              color: box_color,
            ),
            child: Text("dd"),
            
          ),
          Container(
            margin: new EdgeInsets.only(bottom: 10.0, top: 5.0, left: 10.0, right: 10.0),
            child: ClipRRect(
                                            
                  borderRadius: BorderRadius.circular(10.0),                
                  child: Image(
                      image: AssetImage('assets/images/nb-profilepic.png'),              
                      width: 42.0,
                      height: 42.0,
                    ),
                  ),
          ),      
        ]
      ),
            ),
      body: Form(      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter your email',
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              onPressed: () {
                // Validate will return true if the form is valid, or false if
              },
              child: Text('Submit'),
            ),
          ),
        ],
      ),
    )      
    );
  }
}
