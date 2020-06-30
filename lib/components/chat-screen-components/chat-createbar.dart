import 'package:flutter/material.dart';
import 'package:neighboroo/constants.dart';

class NbChatCreateBar extends StatefulWidget {
  @override
  _NbChatCreateBarState createState() => _NbChatCreateBarState();
}

class _NbChatCreateBarState extends State<NbChatCreateBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      height:40.0,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.all(7.0),
      decoration: BoxDecoration(
        color: box_color,
        borderRadius: BorderRadius.all(Radius.circular(7.0))
      ),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
        NbChatCreateBarElement("sdsd"),
        NbChatCreateBarElement("sepp"),
        NbChatCreateBarElement("sepp"),
        NbChatCreateBarElement("sepp"),
        NbChatCreateBarElement("sepp"),
        NbChatCreateBarElement("sepp"),
        NbChatCreateBarElement("sepp"),
      ],),
    );
  }
  // void initState() {
  //   super.initState();
  //   WidgetsBinding.instance
  //       .addPostFrameCallback((_) => print("dfs"));
  // }
}

class NbChatCreateBarElement extends StatefulWidget {
  String chatname;
  
  NbChatCreateBarElement(this.chatname);
  @override
  _NbChatCreateBarElementState createState() => _NbChatCreateBarElementState(chatname);
}

class _NbChatCreateBarElementState extends State<NbChatCreateBarElement> {
  
  
  String nameI;
  _NbChatCreateBarElementState(this.nameI);
  
  @override
  Widget build(BuildContext context) {
    return Container(
              height: 50.0,
              
              padding: EdgeInsets.all(7.0),
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
                    child: Text(this.nameI.toString() ?? "alödjsfl", style: TextStyle(color: text_color),),
                    onPressed: () => {},
                  ),
                ),
              )
    );
  }
}