import 'package:flutter/material.dart';
import 'package:neighboroo/database/database.dart';
import 'package:neighboroo/models/User.dart';

import 'constants.dart';

class Identify extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: bg,
      child: Container(
        child:  SafeArea(
          child: NbIdentifyRegisterInput()
        ),
      )
    );
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
          Text(username),
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
