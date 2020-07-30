import 'package:flutter/material.dart';
import 'package:neighboroo/test/testProvider.dart';
import 'package:provider/provider.dart';

class TestScaffold extends StatelessWidget {
  final ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    TestProvider t = TestProvider();
    return ChangeNotifierProvider<TestProvider>(
      create: (context) => t,
      child: Builder(
        builder: (context){
          return Scaffold(
          body: Container(
            padding: EdgeInsets.all(16),
            child: Form(
              child: Consumer<TestProvider>(
                builder:(context, provider, child){
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: (provider.isEligible == null)? Colors.orangeAccent : provider.isEligible ? Colors.green : Colors.redAccent
                        ),
                        height: 50,
                        width: 50
                      ),
                      SizedBox(height: 16),
                      TextFormField(
                        controller: ageController,
                        decoration: InputDecoration(
                          hintText: "Give your age"
                        ),
                      ),
                      SizedBox(height: 16),
                      Container(
                        width: double.infinity,
                        child: FlatButton(
                          child: Text("Check"),
                          onPressed: (){
                            final int age = int.parse(ageController.text.trim());
                            provider.checkEligiblity(age);
                          }
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(provider.eligiblityMessage),
                    ],
                  );
                } ,
              )
            ),
          ),
        );
        } ,
      )
    );
  }
}