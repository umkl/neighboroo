import 'package:flutter/material.dart';
import 'package:neighboroo/constants.dart';
import 'package:neighboroo/database/database.dart';
import 'package:neighboroo/models/User.dart';

//backend
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

class Identify extends StatefulWidget{
  _IdentifyState createState() => _IdentifyState();

}

class _IdentifyState extends State<Identify>{
  bool visible = false;

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  
  Future userLogin() async{
    setState(() {
      visible = true;
  });  

  String username = usernameController.text;
  String password = passwordController.text;

  var url = 'http://127.0.0.1/Neighboroo-localtest/registration.php';
  var data = {'username': username,'password': password};
  var response = await http.post(url, body: jsonEncode(data));
  print(response.body);


  var message = response.body;

  

  if(message == 'Login Matched'){
    print("seas");
    setState(() {
      visible = false;
    });
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => ProfileScreen(username: usernameController.text))
  );
    }else if(message=='worked'){
      print("worked");
    }else if(message=='not worked'){
      print("not working");
    }
    else{
      setState(() {
        visible = false;
      });
      showDialog(
        context: context,
        builder: (BuildContext context){
          return AlertDialog(
            title: new Text(message),
            actions: <Widget>[
              FlatButton(
                child: new Text("Ok"),
                onPressed: (){
                  Navigator.of(context).pop();
                }
              )
            ],
          );
        }
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SafeArea(
          child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text('User Login Form', 
                style: TextStyle(fontSize: 21))
              ),
              Divider(),          

              Container(
              width: 280,
              padding: EdgeInsets.all(10.0),
              child: TextField(
                  controller: usernameController,
                  autocorrect: true,
                  decoration: InputDecoration(hintText: 'Enter Your Email Here'),
                )
              ),

              Container(
              width: 280,
              padding: EdgeInsets.all(10.0),
              child: TextField(
                  controller: passwordController,
                  autocorrect: true,
                  obscureText: true,
                  decoration: InputDecoration(hintText: 'Enter Your Password Here'),
                )
              ),

              RaisedButton(
                onPressed: userLogin,
                color: Colors.green,
                textColor: Colors.white,
                padding: EdgeInsets.fromLTRB(9, 9, 9, 9),
                child: Text('Click Here To Login'),
              ),

              Visibility(
                visible: visible, 
                child: Container(
                  margin: EdgeInsets.only(bottom: 30),
                  child: CircularProgressIndicator()
                  )
                ),

            ],
          ),
        )
        ),
    )
    );
  }
}

class ProfileScreen extends StatelessWidget{
  final String username;
  
  ProfileScreen({Key key, @required this.username}): super(key: key);

  @override
  Widget build(BuildContext context) {
  return MaterialApp(
  home: Scaffold(
    appBar: AppBar(title: Text('Profile Screen'),
    automaticallyImplyLeading: false),
    body: Center(
      child: Column(children: <Widget>[
          Container(
            width: 280,
            padding: EdgeInsets.all(10.0),
            child: Text('Username = ' + '\n' + username, 
              style: TextStyle(fontSize: 20))
          ),
          RaisedButton(
            onPressed: () {
              logout(context);
            },
          color: Colors.red,
          textColor: Colors.white,
          child: Text('Click Here To Logout'),
          ),
          ],
        )
        )
      )
    );
  }

  logout(BuildContext context){
    Navigator.pop(context);
  }
}



class NbIdentifyRegisterInput extends StatefulWidget {
  @override
  _NbIdentifyRegisterInputState createState() =>
      _NbIdentifyRegisterInputState();
}

class _NbIdentifyRegisterInputState extends State<NbIdentifyRegisterInput> {
  String username;
  String password;

  @override
  void initState() {
    super.initState();
      username = " ";
      password = " ";
  }

  void changeUsername(String username){
    setState(() {
      this.username = username;
    });
  }
  
  void changePassword(String password){
    setState(() {
      this.password = password;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(this.username),
          TextField(
            onChanged: (text){
              changeUsername(text);
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'username',
            ),
          ),
          Text(password),
          TextField(
            onChanged: (text){
              changePassword(text);
            },
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'password',
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 50),
            child: FlatButton(
              child: Text('save'),
              color: green,
              textColor: text_color,
              onPressed: (){
                var nbNewUser = User(this.username,"zonzi", "michl", "ungar", "spost@mail","ramading15","kirchheim", "österreich",this.password);
                NbDatabaseProivder.db.newUser(nbNewUser);
              },
            ),
          )
        ],
      ),
    );
  }
}
