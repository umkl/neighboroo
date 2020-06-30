import 'package:flutter/material.dart';
import 'package:neighboroo/components/head.dart';
import 'package:neighboroo/constants.dart';
import 'package:neighboroo/models/AssetElement.dart';
import 'package:neighboroo/screens/categories/chat-screen.dart';
import 'package:neighboroo/screens/categories/main-screen.dart';



class Neighboroo extends StatefulWidget {
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
          return red;
          break;
        case 2:
          return NbMainScreen().colortheme;
          break;
        case 3:
          return Colors.green;
          break;
        case 4:
          return red;
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
          return "dsaf";
          break;
        case 2:
          return null;
          break;
        case 3:
          return "dsaf";
          break;
        case 4:
          return "dsaf";
          break;
        default:
      }
    }

    return Scaffold(
      appBar: PreferredSize(
            preferredSize: Size.fromHeight(60.0),
            child: NbHead(headcolor: ColorReturn(), searchtext: SearchTextReturn(),),
         ),

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
                  child: AssetElement('assets/icons/nb-icon-chat-light.png'),
                  onTap: () => {onItemTapped(0)}),
              InkWell(
                  child: AssetElement('assets/icons/nb-icon-items-light.png'),
                  onTap: () => onItemTapped(1)),
              InkWell(
                  child: AssetElement('assets/icons/nb-icon-home-light.png',
                      padding: 8.0),
                  onTap: () => onItemTapped(2)),
              InkWell(
                  child:
                      AssetElement('assets/icons/nb-icon-transport-light.png'),
                  onTap: () => onItemTapped(3)),
              InkWell(
                  child: AssetElement('assets/icons/nb-icon-work-light.png'),
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