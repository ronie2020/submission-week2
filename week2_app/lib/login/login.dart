import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:week2_app/login/Register.dart';

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.blue[400],
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
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(20),
                  width: 250,
                  color: Colors.white,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Email :',
                      border: InputBorder.none
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(20),
                  width: 250,
                  color: Colors.white,
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Password :',
                        border: InputBorder.none
                    ),
                  ),
                ),
                SizedBox(height: 20.0,),
                 RaisedButton(
                     color: Colors.blue[900],
                     padding: EdgeInsets.only(left:109,top: 20, right: 109, bottom: 20,),
                     child: Text('Login', style: TextStyle(
                       color: Colors.white,
                       fontWeight: FontWeight.bold,
                     ),
                     ),
                     onPressed: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context) => Register()));
                     },
                 ),
                FlatButton(
                  onPressed: () {},
                    child: Text('Not a member? signup now', style: TextStyle(
                      color: Colors.white,
                    ),),),

              ],
            ),
          ),
        ],
      ),
    );
  }
}


