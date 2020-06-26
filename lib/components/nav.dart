import 'package:flutter/material.dart';
import 'package:neighboroo/models/category.dart';
import 'package:neighboroo/screens/categories/chat_screen.dart';
import 'package:neighboroo/screens/categories/items_screen.dart';
import 'package:neighboroo/screens/categories/transport_screen.dart';
import 'package:neighboroo/screens/categories/work_screen.dart';
import 'package:neighboroo/screens/categories/main_screen.dart';

import '../constants.dart';
import 'head.dart';

class NavigationWidget extends StatefulWidget {
  @override
  _NavigationWidgetState createState() => _NavigationWidgetState();
}

class _NavigationWidgetState extends State<NavigationWidget> {
  int _selectedIndex = 2;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    ChatScreen(),
    ItemScreen(),
    MainScreen(),
    TransportScreen(),
    WorkScreen(),
  ];
  void _onItemTappedd(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bg_main,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: HeadBar(),
        ),
        body: Container(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),

        bottomNavigationBar: BottomAppBar(
          elevation: 0,
          color: box_color,
          child: Container(
            margin: EdgeInsets.all(10.0),
            height: 60.0,
            decoration: BoxDecoration(
              color: box_color,
              borderRadius: BorderRadius.all(Radius.circular(7)),
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  InkWell(child: Category('assets/icons/nb-icon-chat-light.png'), onTap: ()=> setState(()=>_selectedIndex = 0)),
                  InkWell(child: Category('assets/icons/nb-icon-items-light.png'),onTap: ()=> setState(()=>_selectedIndex = 1)),
                  InkWell(child: Category('assets/icons/nb-icon-home-light.png', padding: 8.0),onTap: ()=> setState(()=>_selectedIndex = 2)),
                  InkWell(child: Category('assets/icons/nb-icon-transport-light.png'),onTap: ()=> setState(()=>_selectedIndex = 3)),
                  InkWell(child: Category('assets/icons/nb-icon-work-light.png'),onTap: ()=> setState(()=>_selectedIndex = 4)),
                ]),
          ),
        ));
  }
}

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
