import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:week2_app/login/login.dart';

class Register extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: AppBar(
            backgroundColor: Colors.blue[900],
            title: Text("Selamat Datang", style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),),
            actions: <Widget>[
              Container(
                  margin: EdgeInsets.only(right: 20),
                  child: InkWell(
                      borderRadius: BorderRadius.circular(30),
                      splashColor: Colors.blue[100],
                      onTap: () {
                      },
                      child: Icon(Icons.exit_to_app_sharp)))
            ],
          ),
        ),
        body: Center(
         child: Container(
           child: Column(
             children: <Widget>[
               SizedBox(height: 80.0,),
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
               SizedBox(height: 20.0,),
               RaisedButton(onPressed: () {},
                 padding: EdgeInsets.all(2.0),
                 textColor: Colors.white,
                 child: Container(
                   padding: EdgeInsets.only(left: 60.0, top: 30.0, right:60,bottom: 30,),
                   decoration: const BoxDecoration(
                     gradient: LinearGradient(
                       colors: <Color>[
                         Color(0xFF0D47A1),
                         Color(0xFF1976D2),
                         Color(0xFF42A5F5),
                       ],
                     ),
                   ),
                  child: Text('Menghitung Umur', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),),
               )
               ),

               SizedBox(height: 20.0,),
               RaisedButton(onPressed: () {},
                   padding: EdgeInsets.all(2.0),
                   textColor: Colors.white,
                   child: Container(
                     padding: EdgeInsets.only(left: 60.0, top: 30.0, right:60,bottom: 30,),
                     decoration: const BoxDecoration(
                       gradient: LinearGradient(
                         colors: <Color>[
                           Color(0xFF0D47A1),
                           Color(0xFF1976D2),
                           Color(0xFF42A5F5),
                         ],
                       ),
                     ),
                     child: Text('Menghitung Luas', style: TextStyle(
                       fontWeight: FontWeight.bold,
                       fontSize: 20,
                     ),),
                   )
               ),

               SizedBox(height: 20.0,),
               RaisedButton(onPressed: () {},
                   padding: EdgeInsets.all(2.0),
                   textColor: Colors.white,
                   child: Container(
                     padding: EdgeInsets.only(left: 60.0, top: 30.0, right:60,bottom: 30,),
                     decoration: const BoxDecoration(
                       gradient: LinearGradient(
                         colors: <Color>[
                           Color(0xFF0D47A1),
                           Color(0xFF1976D2),
                           Color(0xFF42A5F5),
                         ],
                       ),
                     ),
                     child: Text('Kembali', style: TextStyle(
                       fontWeight: FontWeight.bold,
                       fontSize: 20,
                     ),),
                   )
               ),
               Container(
                 padding: EdgeInsets.all(20.0),
                 child: Text('Terima Kasih telah mencoba Aplikasi ini',
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
        ),
      ),
    );
  }
}

