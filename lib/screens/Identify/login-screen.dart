import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:neighboroo/Surface.dart';
import 'package:neighboroo/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:neighboroo/models/AssetElement.dart';
import 'package:neighboroo/models/User.dart';
import 'package:neighboroo/screens/Identify/register-screen.dart';

class NbLogin extends StatefulWidget {
  @override
  _NbLoginState createState() => _NbLoginState();
}

class _NbLoginState extends State<NbLogin> {
  
  //definining variables
  final usernameTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  bool autologin;
  bool visible = false;

  Future userLogin() async {
    setState(() {
      visible = true;
    });
    String username = usernameTextController.text;
    String password = passwordTextController.text;
    // var url = backendpath + "login.php";
    var url = "http://localhost/Neighboroo-localtest/login.php";

    var response = await http.post(url, body: jsonEncode({'username': username, 'password': password}));
    print(response.body);
    Map<String, dynamic> responseAssoc = jsonDecode(response.body);
    var cmessage = "Login Matched";
    print(responseAssoc["description"]);
    // var message = jsonDecode(response.body);
    if(responseAssoc["message"]=="Login Matched"){
      User u = new User(nickname: responseAssoc["nickname"],firstname: responseAssoc["firstname"],lastname: responseAssoc["lastname"],email: responseAssoc["email"],password: responseAssoc["password"],description: responseAssoc["description"]);
      
      setState(() {
        visible = false;
      });
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Surface(user: u))
      );

    }else{
      setState(() {
        visible = false;
      });
      showDialog(
        context: context,
        builder: (BuildContext context){
          return AlertDialog(
            title: new Text(":("),
              actions: <Widget>[
                FlatButton(
                  child: new Text("OK"),
                  onPressed: (){
                    Navigator.of(context).pop();
                  })
              ],
          );
        }
      );
    }
  }

  @override
  void initState() {
    autologin = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Nbbackgroundglobe(),
          Container(
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children: <Widget>[
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: 40,
                          left: -40,
                          child: Opacity(
                            opacity: 0.6,
                            child: RotationTransition(
                              turns: new AlwaysStoppedAnimation(-20 / 360),
                              child: SvgPicture.asset(
                                'assets/icons/svg/house.svg',
                                color: green,
                                height: 140,
                                width: 100,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 110,
                          bottom: 50,
                          child: Opacity(
                            opacity: 0.6,
                            child: RotationTransition(
                              turns: new AlwaysStoppedAnimation(-10 / 360),
                              child: SvgPicture.asset(
                                'assets/icons/svg/house2.svg',
                                color: blue,
                                height: 150,
                                width: 100,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: -80,
                          bottom: 0,
                          child: Opacity(
                            opacity: 0.6,
                            child: RotationTransition(
                              turns: new AlwaysStoppedAnimation(30 / 360),
                              child: SvgPicture.asset(
                                'assets/icons/svg/house3.svg',
                                height: 140,
                                width: 100,
                                color: red,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 60,
                          bottom: 50,
                          child: Opacity(
                            opacity: 0.6,
                            child: RotationTransition(
                              turns: new AlwaysStoppedAnimation(10 / 360),
                              child: SvgPicture.asset(
                                'assets/icons/svg/house4.svg',
                                height: 140,
                                width: 100,
                                color: yellow,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(left: 40.0, top: 30),
                    child: Text("Login",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        color: text_color,
                      )
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 20, left: 30, right: 30),
                      padding: EdgeInsets.only(top: 0, left: 10, right: 10),
                      height: 50.0,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: box_color,
                        borderRadius: BorderRadius.all(Radius.circular(7.0)),
                      ),
                      child: TextField(
                        
                        autocorrect: false,
                        controller: usernameTextController,
                        decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          hintText: "username / email",
                          hintStyle: TextStyle(
                              fontSize: 20,
                              color: hint_text_color,
                              fontWeight: FontWeight.w400),
                        ),
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: text_color,
                        ),
                        keyboardAppearance: Brightness.dark,
                      )),
                  Container(
                      margin: EdgeInsets.only(
                        top: 10,
                        left: 30,
                        right: 30,
                      ),
                      padding: EdgeInsets.only(top: 0, left: 10, right: 10),
                      height: 50.0,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: box_color,
                        borderRadius: BorderRadius.all(Radius.circular(7.0)),
                      ),
                      child: TextField(
                        
                        obscureText: true,
                        controller: passwordTextController,
                        decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          hintText: "password",
                          hintStyle: TextStyle(
                              fontSize: 20,
                              color: hint_text_color,
                              fontWeight: FontWeight.w400),
                        ),
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: text_color,
                        ),
                        keyboardAppearance: Brightness.dark,
                      )),
                  Container(
                      margin: EdgeInsets.only(top: 30, left: 30, right: 30),
                      padding: EdgeInsets.only(top: 0, left: 10, right: 10),
                      height: 50.0,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: red,
                        borderRadius: BorderRadius.all(Radius.circular(7.0)),
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          splashColor: Colors.white12,
                          onTap: () => {print("ads")},
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    height: 50,
                                    padding:
                                        EdgeInsets.only(top: 12, bottom: 10),
                                    child: Text(
                                      "sign in with google",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        color: text_color,
                                      ),
                                    )),
                                Container(
                                    child: Opacity(
                                        opacity: 1,
                                        child: AssetElement(
                                            'assets/images/nb-google-icon.png',
                                            size: 20)))
                              ],
                            ),
                          ),
                        ),
                      )),
                  Container(
                      margin: EdgeInsets.only(top: 10, left: 30, right: 30),
                      padding: EdgeInsets.only(top: 0, left: 10, right: 10),
                      height: 50.0,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: box_color,
                        borderRadius: BorderRadius.all(Radius.circular(7.0)),
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          splashColor: Colors.white12,
                          onTap: () => {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NbRegister()))
                          },
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    height: 50,
                                    padding:
                                        EdgeInsets.only(top: 12, bottom: 10),
                                    child: Text(
                                      "create a new account",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        color: text_color,
                                      ),
                                    )),
                                // Container(
                                //     child: Opacity(
                                //   opacity: 1,
                                //   child: SvgPicture.asset(
                                //     'assets/icons/svg/create.svg',
                                //     color: Colors.white,
                                //     height: 30,
                                //     width: 30,
                                //   ),
                                // ))
                                Container(
                                    height: 30,
                                    width: 30,
                                    child: Opacity(
                                      opacity: 1,
                                      child: Icon(
                                        Icons.create,
                                        color: Colors.white,
                                      ),
                                    ))
                              ],
                            ),
                          ),
                        ),
                      )),
                  Container(
                    color: Colors.transparent,
                    margin: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          // NbSwitch(),
                          Container(
                            height: 30.0,
                            decoration: BoxDecoration(
                              color: box_color,
                              borderRadius: BorderRadius.circular(7.0),
                            ),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 5),
                                  child: Text(
                                    "autologin",
                                    style: TextStyle(color: text_color),
                                  ),
                                ),
                                // NbSwitch(
                                //   value: autologin,
                                //   onChanged: (value){
                                //     setState(() {
                                //       autologin = value;
                                //       print(value);
                                //     });
                                //   },
                                //   )
                                Switch(
                                  value: autologin,
                                  onChanged: (value) {
                                    setState(() {
                                      autologin = value;
                                      print(autologin);
                                    });
                                  },
                                  activeTrackColor: Colors.lightGreenAccent,
                                  activeColor: Colors.green,
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () async{
                              userLogin();
                              },
                            child: Container(
                              height: 30,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: box_color,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(7))),
                              child: Center(
                                child: Text(
                                  "go",
                                  style: TextStyle(
                                    color: text_color,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ]),
                  ),
                  Opacity(
                    opacity: 1,
                    child: Container(
                      margin: EdgeInsets.only(top: 40),
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        "Living together made easy and fun",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white60, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  // AnimationTest(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Nbbackgroundglobe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.transparent,
      ),
      child: ClipRect(
        clipBehavior: Clip.hardEdge,
        child: OverflowBox(
          maxHeight: MediaQuery.of(context).size.height * 1,
          maxWidth: MediaQuery.of(context).size.width * 1.7,
          child: Center(
            child: Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.16),
              decoration: BoxDecoration(
                color: globe,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ),
      ),
    );
    // return LayoutBuilder(
    //   builder: (context, constraints) {
    //     final radius = constraints.biggest.width * 1.2;
    //     return SizedBox(
    //       width: radius,
    //       height: 100,
    //       child: FittedBox(
    //         fit: BoxFit.fitHeight,
    //         child: Container(
    //           width: radius,
    //           height: 100,
    //           decoration: BoxDecoration(
    //             shape: BoxShape.circle,
    //             color: Colors.blue,
    //           ),
    //         ),
    //       ),
    //     );
    //   }
    // );
  }
}
