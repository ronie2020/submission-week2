import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.blue),
    home: AgeApp())
);

class AgeApp extends StatefulWidget {
  @override
  _AgeAppState createState() => _AgeAppState();
}
class _AgeAppState extends State<AgeApp> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  void _showPicker(){
    showDatePicker(context: context,
      firstDate: DateTime(1900), 
      initialDate: DateTime(2020),
      lastDate: DateTime.now(),
    );
  }


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
              padding: EdgeInsets.all(20),
              child: Text('Silahkan pilih Tahun lahir Anda', style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),
              borderSide: BorderSide(color: Colors.blue[900], width: 4.0),
              color: Colors.white,
              onPressed: () =>(''),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
            ),
            Text('Usia Anda Saat ini 30 Tahun', style: TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.bold,
            ),),
          ],
        ),

      ),
    );
  }
}