import 'package:flutter/material.dart';
import 'package:neighboroo/Surface.dart';
import 'package:neighboroo/constants.dart';
import 'package:neighboroo/models/AssetElement.dart';
import 'package:neighboroo/screens/Surface/chat-screen.dart';


class NbNavigation extends StatefulWidget {
  Color nbcolor;
  
  NbNavigation(this.nbcolor);

  @override
  NavigationWidgetState createState() => NavigationWidgetState(this.nbcolor);
}

class NavigationWidgetState extends State<NbNavigation> {
  Color nbcolor;
  NavigationWidgetState([this.nbcolor]); 

  static int selectedIndex = 2;

  void onItemTapped(int index) {
    Surface.currentindex = index;
    print(index);
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 0,
      color: this.nbcolor ?? Colors.transparent,
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
                  onTap: () => {NbChatScreen()}),
              InkWell(
                  child: AssetElement('assets/icons/nb-icon-items-light.png'),
                  onTap: () => setState(() => selectedIndex = 1)),
              InkWell(
                  child: AssetElement('assets/icons/nb-icon-home-light.png',
                      padding: 8.0),
                  onTap: () => setState(() => selectedIndex = 2)),
              InkWell(
                  child:
                      AssetElement('assets/icons/nb-icon-transport-light.png'),
                  onTap: () => setState(() => selectedIndex = 3)),
              InkWell(
                  child: AssetElement('assets/icons/nb-icon-work-light.png'),
                  onTap: () => setState(() => selectedIndex = 4)),
            ]),
        ),      
    );
  }
}



class NbNavigationElement extends StatelessWidget {
  int selectedIndex;

  NbNavigationElement(this.selectedIndex);
  
  @override
  Widget build(BuildContext context) {
    switch(selectedIndex){
      case 0:
        break;
      case 1:
        break;
      case 2:
        break;
      case 3:
        break;
      case 4:
        break;
    }
    
    return Container(
      
    );
  }
}

// Scaffold(
//         backgroundColor: bg,
//         appBar: PreferredSize(
//           preferredSize: Size.fromHeight(60.0),
//           child: NbHead(),
//         ),
//         body: Container(
//           child: _widgetOptions.elementAt(_selectedIndex),
//         ),
//         bottomNavigationBar: BottomAppBar(
//           elevation: 0,
//           color: Colors.white,
//           child: Container(
//             margin: EdgeInsets.all(10.0),
//             height: 60.0,
//             decoration: BoxDecoration(
//               color: box_color,
//               borderRadius: BorderRadius.all(Radius.circular(7)),
//             ),
//             child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: <Widget>[
//                   InkWell(
//                       child: Category('assets/icons/nb-icon-chat-light.png'),
//                       onTap: () => setState(() => _selectedIndex = 0)),
//                   InkWell(
//                       child: Category('assets/icons/nb-icon-items-light.png'),
//                       onTap: () => setState(() => _selectedIndex = 1)),
//                   InkWell(
//                       child: Category('assets/icons/nb-icon-home-light.png',
//                           padding: 8.0),
//                       onTap: () => setState(() => _selectedIndex = 2)),
//                   InkWell(
//                       child:
//                           Category('assets/icons/nb-icon-transport-light.png'),
//                       onTap: () => setState(() => _selectedIndex = 3)),
//                   InkWell(
//                       child: Category('assets/icons/nb-icon-work-light.png'),
//                       onTap: () => setState(() => _selectedIndex = 4)),
//                 ]),
//           ),
//         ));











// class NeighborooNavigation extends StatelessWidget {
//   int index;
//   @override
//   Widget build(BuildContext context) {
//     return BottomAppBar(
//       elevation: 0,
//       color: box_color,
//       child: Container(
//         margin: EdgeInsets.all(10.0),
//         height: 60.0,
//         decoration: BoxDecoration(
//           color: box_color,
//           borderRadius: BorderRadius.all(Radius.circular(7)),
//         ),
//         child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: <Widget>[
//               InkWell(
//                 child: Category('assets/icons/nb-icon-chat-light.png'),
//                 onTap: () => index = 0,
//               ),
//               InkWell(
//                 child: Category('assets/icons/nb-icon-items-light.png'),
//                 onTap: () => index = 1,
//               ),
//               InkWell(
//                 child: Category('assets/icons/nb-icon-home-light.png',
//                     padding: 8.0),
//                 onTap: () => index = 2,
//               ),
//               InkWell(
//                 child: Category('assets/icons/nb-icon-transport-light.png'),
//                 onTap: () => index = 3,
//               ),
//               InkWell(
//                 child: Category('assets/icons/nb-icon-work-light.png'),
//                 onTap: () => index = 4,
//               ),
//             ]),
//       ),
//     );
//   }
// }

// class MyStatefulWidget extends StatefulWidget {
//   MyStatefulWidget({Key key}) : super(key: key);

//   @override
//   _MyStatefulWidgetState createState() => _MyStatefulWidgetState();//creating a state in order to change the
// }

// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//   int _selectedIndex = 0;
//   static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
//   static const List<Widget> _widgetOptions = <Widget>[
//     Text(
// 'Index 0: Home',
//       style: optionStyle,
//     ),
//     Text(
//       'Index 1: Business',
//       style: optionStyle,
//     ),
//     Text(
//       'Index 2: School',
//       style: optionStyle,
//     ),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('BottomNavigationBar Sample'),
//       ),
//       body: Center(
//         child: _widgetOptions.elementAt(_selectedIndex),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             title: Text('Home'),
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.business),
//             title: Text('Business'),
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.school),
//             title: Text('School'),
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         selectedItemColor: Colors.amber[800],
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }
