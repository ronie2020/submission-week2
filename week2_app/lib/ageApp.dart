import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.blue[900]),
    home: AgeApp())
);

class AgeApp extends StatefulWidget {
  @override
  _AgeAppState createState() => _AgeAppState();
}
class _AgeAppState extends State<AgeApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Age Calculator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            OutlineButton(
              child: Text('Silahkan pilih Tahun lahir Anda'),
            )
          ],
        ),
      ),
    );
  }
}