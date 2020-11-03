import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:week2_app/login/Register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginApp(),
    );
  }
}
class LoginApp extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}
class _LoginState extends State<LoginApp> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  String nusername = "";
  String npassword = "";
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.indigoAccent[50],
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 20, top: 40, right: 20, bottom: 30,),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 50,),
                Text('Welcome, ', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 45,
                  color: Colors.blue[900],
                  ),
                ),

                SizedBox(height: 5,),
                Text('Please Login first...!', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.blue[900],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height:20,),
                TextFormField(
                  controller: username,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue[900])
                      ),
                      prefixIcon: Icon(Icons.person, size: 30,),
                      hintText: 'username',
                      labelText: 'username'
                  ),
                ),
                SizedBox(height:20,),
                TextFormField(
                  obscureText: true,
                  controller: password,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue[900])
                      ),
                      prefixIcon: Icon(Icons.lock, size: 30,),
                      hintText: 'Password',
                      labelText: 'Password',
                  ),
                ),



              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                SizedBox(width: 20),
                RaisedButton(
                  color: Colors.blue[900],
                  padding: EdgeInsets.only(left:150,top: 20, right: 150, bottom: 20,),
                  child: Text('Login', style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Register()));
                  },
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text('Not a member? signup now', style: TextStyle(
                    color: Colors.blueAccent,
                  ),),),
              ],
            ),
          )
        ],
      ),
    );
  }
}


