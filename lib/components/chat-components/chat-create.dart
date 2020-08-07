import 'package:flutter/material.dart';
import 'package:neighboroo/components/general-components/button.dart';
import 'package:neighboroo/constants.dart';

class NbChatCreateBar extends StatefulWidget {
  Function callback;
  Function message;
  Function event;
  Function news;

  NbChatCreateBar({this.callback, this.message, this.event, this.news});

  @override
  _NbChatCreateBarState createState() => _NbChatCreateBarState();
}

class _NbChatCreateBarState extends State<NbChatCreateBar> {

  List<NbChatCreateBarElement> nbChatCreateBarElements;

  @override
  void initState() {
    super.initState();
    nbChatCreateBarElements = [NbChatCreateBarElement("message"),NbChatCreateBarElement("event"),NbChatCreateBarElement("news"),];
    for(var i = 0; i < nbChatCreateBarElements.length; i++){
      String s = nbChatCreateBarElements[i].chatname;
      nbChatCreateBarElements[i].buttonevent = getnccbe(nbChatCreateBarElements[i]);
    }
  }

  Function getnccbe(NbChatCreateBarElement e){
    switch (e.chatname){
      case "message":
        return widget.message;
        break;
      case "event":
        return widget.event;
        break;
      case "news":
        return widget.news;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          //headline
          SizedBox(
            width: double.infinity,
            child: Container(
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                "Create:",
                style: TextStyle(
                  color: text_color,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          //the create elements
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(7.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(7.0)),
                  color: box_color
                ),
                  child: Row(
                    children: nbChatCreateBarElements,
                  )
                )
              ],
            ),
        ]
      ),
    );
  }


}


//element with event that is in create bar

class NbChatCreateBarElement extends StatefulWidget {
  String chatname;
  var buttonevent;

  NbChatCreateBarElement(this.chatname,{this.buttonevent});
  @override
  _NbChatCreateBarElementState createState() => _NbChatCreateBarElementState(chatname);
}

class _NbChatCreateBarElementState extends State<NbChatCreateBarElement> {
  
  String nameI;
  _NbChatCreateBarElementState(this.nameI);
  
  

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(7.0),
      child: NbButton(
        buttonname: widget.chatname,
        buttoncolor:  button_red,
        buttonfunction: widget.buttonevent ?? ()=>{print("chat create bar event not defined")},
      ),
    );
  }
}
