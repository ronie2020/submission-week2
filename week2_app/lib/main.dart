import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Login Submission Flutter'),

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
      body: Center(

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: <Widget>[
           Expanded(

               child: RaisedButton(
                 padding: EdgeInsets.all(30),
                 color: Colors.blueAccent[200],
                 child: Text('Login'),
                 onPressed: () {},
               ),),

            Expanded(
              child: RaisedButton(
                padding: EdgeInsets.all(30),
                color: Colors.blueAccent[100],
                child: Text('Age App'),
                onPressed: () {},
              ),),

            Expanded(
              child: RaisedButton(
                padding: EdgeInsets.all(30),
                color: Colors.blueAccent[400],
                child: Text('Sum App'),
                onPressed: () {},
              ),),
          ],
        ),
      ),
    );
  }
}
