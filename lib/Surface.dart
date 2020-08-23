import 'package:flutter/material.dart';
import 'package:neighboroo/components/general-components/chat-element.dart';
import 'package:neighboroo/components/general-components/drawer.dart';
import 'package:neighboroo/components/general-components/head.dart';
import 'package:neighboroo/components/general-components/neighboroo.dart';
import 'package:neighboroo/constants.dart';
import 'package:neighboroo/models/AssetElement.dart';
import 'package:neighboroo/models/Neighboroo.dart';
import 'package:neighboroo/models/User.dart';
import 'package:neighboroo/screens/Surface/chat-screen.dart';
import 'package:neighboroo/screens/Surface/main-screen.dart';
import 'components/general-components/user.dart';

class Surface extends StatefulWidget {
  User user;
  Surface({@required this.user});

  static int currentindex = 2;

  @override
  _NeighborooState createState() => _NeighborooState(currentindex);
}

class _NeighborooState extends State<Surface> {
  int currentindex;
  _NeighborooState(this.currentindex);
    
    void onItemTapped(int index) {
    Surface.currentindex = index;
    print(index);
    setState(() {
      currentindex = index;
    });
  }

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,

      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: NbHead(headcolor: ColorReturn(), searchtext: SearchTextReturn(),),
      ),

      endDrawer: NbDrawer(u: this.widget.user),

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
                    child: AssetElement('assets/icons/nb-icon-transport-1.png'),
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