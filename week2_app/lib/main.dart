import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:week2_app/ageApp.dart';
import 'package:week2_app/login/login.dart';
import 'package:week2_app/volumApp.dart';
import 'package:week2_app/login/Register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SubMission Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Submission Flutter Udacoding'),
      //home: Login(),

    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void _incrementCounter() {
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
       children: <Widget>[
         Container(
           width: MediaQuery.of(context).size.width,
           padding: EdgeInsets.only(left: 20.0,top: 150.0, right: 20.0, bottom: 20.0),

           child: Column(
             children: <Widget>[
               Container(
                 child: Text('Selamat Datang',
                 style: (TextStyle(
                   fontWeight: FontWeight.bold,
                   color: Colors.blue[900],
                   fontSize: 40.0,
                 )
                 ),
                 ),
               ),
               Container(
                 padding: EdgeInsets.all(10.0),
                 child: Text('Silahkan Memilih Aplikasi yang akan Dibuka',
                   style: (TextStyle(
                     fontWeight: FontWeight.bold,
                     color: Colors.blue[900],
                     fontSize: 15.0,
                   )
                   ),
                 ),
               ),
             ],
           ),
         ),

         Container(
           width: MediaQuery.of(context).size.width,
           padding: const EdgeInsets.all(20.0),
           child: Row(
             children: <Widget>[
               SizedBox(height: 15.0,),
               Expanded(

                 child: RaisedButton(
                    padding: EdgeInsets.all(20.0),
                    color: Colors.blue[900],

                   child: Text('Login', style: TextStyle(
                     fontWeight: FontWeight.bold,
                     color: Colors.white,
                     fontSize: 20.0,
                   ),),
                   onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginApp()));
                   },
                 ),
               ),
               SizedBox(width: 15.0,),
               Expanded(
                 child: RaisedButton(
                   padding: EdgeInsets.all(20.0),
                   color: Colors.blue[900],
                   child: Text('AgeApp', style: TextStyle(
                     fontWeight: FontWeight.bold,
                     color: Colors.white,
                     fontSize: 18.0
                   ),),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => AgeApp()));
                    },
                 ),
               ),
               SizedBox(width: 15.0,),
               Expanded(
                 child: RaisedButton(
                   padding: EdgeInsets.all(20.0),
                   color: Colors.blue[900],
                   child: Text('SumApp', style: TextStyle(
                     fontWeight: FontWeight.bold,
                     color: Colors.white,
                     fontSize: 17.0,
                   ),),
                   onPressed: () {
                     Navigator.push(context,
                         MaterialPageRoute(builder: (context) => VolumApp()));
                   },
                 ),
               ),
             ],
           ),
          ),


          Center(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Text('Terima Kasih', style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue[900],
                fontSize: 15,

              ),),
            ),
          ),

       ],
        ),

    );
  }
}
