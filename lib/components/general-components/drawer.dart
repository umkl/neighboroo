import 'package:flutter/material.dart';
import 'package:neighboroo/components/general-components/button.dart';
import 'package:neighboroo/constants.dart';
import 'package:neighboroo/models/AssetElement.dart';
import 'package:neighboroo/models/User.dart';

class NbDrawer extends StatelessWidget {
  User u;
  NbDrawer({this.u});
  @override
  Widget build(BuildContext context) {
    return Drawer(
        // elevation: 1203120,
        child: Container(
        color: box_color,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*0.25,
              color: box_color,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children:<Widget>[
                  Container(
                    height: 120,
                    width: 120,
                    margin: EdgeInsets.all(15.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset('assets/images/nb-profilepic.png'),
                    )
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                        child: Text(u.nickname,
                          style: TextStyle(
                            color: text_color,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5, left: 5, right: 15, bottom: 20),
                        child: ConstrainedBox(
                          constraints: BoxConstraints(maxWidth: 120),
                          child: Text(u.description,
                          style: TextStyle(
                            color: text_color
                          ),),
                        ),
                      ),
                      
                    ],
                  ),
                ]
              ),
            ),
            Expanded(
              
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    
                  children: <Widget>[
                    InkWell(
                        onTap: ()=>Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Scaffold()
                          )
                        ),
                        child: Container(
                         padding: EdgeInsets.all(10.0),
                        child: Text("Profile",
                          style: TextStyle( color: text_color, fontSize: 15),
                        ),
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.all(10.0),
                      child: Text("Contact",
                      style: TextStyle( color: text_color, fontSize: 15),
                      ),
                    ),
                    
                    Container(
                      padding: EdgeInsets.all(10.0),
                      child: Text("About",
                      style: TextStyle( color: text_color, fontSize: 15),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      child: Text("Log out",
                      style: TextStyle( color: text_color, fontSize: 15),
                      ),
                    ),
                    Divider(
                      color: text_color,
                    ),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      child: Text("Neighboroo Pro",
                        style: TextStyle( color: text_color, fontSize: 15),
                      ),
                    ),
                                        Divider(
                      color: text_color,
                    ),
                  ],
                ),
              ),
            ),
            SafeArea(
              child: Container(
                // margin: EdgeInsets.only(bottom: 20),
                margin: EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Expanded(flex: 3,child: NbButton(buttoncolor: button_red,buttonname: "log out",buttonmargin: 5)),
                    Expanded(flex: 3,child: NbButton(buttoncolor: bgdark,buttonname: "darkmode",buttonmargin: 5)),
                  ]
                ),
              ),
            )  
            // Container(
            //   color: green,
            //   width: 20,
            //   height: 20,
            // ),
            // Container(
            //   height: 20,
            //   width: 20,
            //   child: Image.asset('assets/images/nb-profilepic.png')
            // )
          ]
        ),
      ),
    );
  }
}