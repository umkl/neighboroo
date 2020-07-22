import 'package:flutter/material.dart';
import 'package:neighboroo/components/general-category-components/chat-element.dart';
import 'package:neighboroo/components/general-category-components/head.dart';
import 'package:neighboroo/components/general-category-components/user.dart';
import 'package:neighboroo/components/general-category-components/village.dart';
import 'package:neighboroo/constants.dart';
import 'package:neighboroo/models/AssetElement.dart';
import 'package:neighboroo/screens/Neighboroo/chat-screen.dart';
import 'package:neighboroo/screens/Neighboroo/main-screen.dart';




class Neighboroo extends StatefulWidget {
  //villages
  
  //chat elements
  static List<NbChatElement> nbChatRecentsElements = [
    NbChatElement(1, user, DateTime.now(), "bepsn"),
    NbChatElement(2, user, DateTime.now(), "bepsn1"),
    NbChatElement(3, user, DateTime.now(), "bepsn2"),
    NbChatElement(4, user, DateTime.now(), "bepsn2"),
    NbChatElement(5, user, DateTime.now(), "bepsn2"),
    NbChatElement(6, user, DateTime.now(), "bepsn2"),
  ];

  static List<Widget> nbChatContactElements = [
    NbVillage(),
    NbUser(),
    NbVillage(),
  ];

  static List getNbChatContactElements(){
    return nbChatContactElements;
  }

  static List getNbChatRecentsElements(){
    return nbChatRecentsElements;  
  } 

  static void setnbChatElements(List<NbChatElement> ls){
      nbChatRecentsElements = ls;
  } 

  static int currentindex = 2;
  @override
  _NeighborooState createState() => _NeighborooState(currentindex);
}

class _NeighborooState extends State<Neighboroo> {
  int currentindex;
  _NeighborooState(this.currentindex);
    
    void onItemTapped(int index) {
    Neighboroo.currentindex = index;
    print(index);
    setState(() {
      currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Color ColorReturn(){
      switch (currentindex) {
        case 0:
          return NbChatScreen().colortheme;
          break;
        case 1:
          return green;
          break;
        case 2:
          return NbMainScreen().colortheme;
          break;
        case 3:
          return yellow;
          break;
        case 4:
          return blue;
          break;
        default:
      }
    }

    String SearchTextReturn(){
      switch (currentindex) {
        case 0:
          return "search your contacts";
          break;
        case 1:
          return "search for items";
          break;
        case 2:
          return null;
          break;
        case 3:
          return "search for drivers";
          break;
        case 4:
          return "search for work";
          break;
        default:
      }
    }

    return Scaffold(
      appBar: PreferredSize(
            preferredSize: Size.fromHeight(60.0),
            child: NbHead(headcolor: ColorReturn(), searchtext: SearchTextReturn(),),
         ),
      endDrawer: Drawer(child: Text("data"),),
      body: screens.elementAt(currentindex),

      bottomNavigationBar: BottomAppBar(
      elevation: 0,
      color: ColorReturn(),
      child: Container(
        margin: EdgeInsets.all(10.0),
        height: 65.0,
        decoration: BoxDecoration(
          color: box_color,
          borderRadius: BorderRadius.all(Radius.circular(7)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              InkWell(
                  child: AssetElement('assets/icons/nb-icon-chat-light-1.png'),
                  onTap: () => {onItemTapped(0)}),
              InkWell(
                  child: AssetElement('assets/icons/nb-icon-items-1.png'),
                  onTap: () => onItemTapped(1)),
              InkWell(
                  child: AssetElement('assets/icons/nb-icon-home-light.png',
                      padding: 8.0),
                  onTap: () => onItemTapped(2)),
              InkWell(
                  child:
                      AssetElement('assets/icons/nb-icon-transport-1.png'),
                  onTap: () => onItemTapped(3)),
              InkWell(
                  child: AssetElement('assets/icons/nb-icon-work-1.png'),
                  onTap: () => onItemTapped(4)),
            ]),
        ),      
    ),
    ); 
  }

}









    // switch (currentindex) {
    //   case 0:
    //     screens.elementAt(currentindex);
    //     break;
    //   case 1:
        
    //     break;
    //   case 2:
    //     break;
    //   case 3:
    //     break;
    //   case 4:
    //     break;
    //   default:
    //     return Container(child: Text("this site wasnt found"));
    // }