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

  double age = 0.0;
  var selectedYear;

   void _showPicker(){
    showDatePicker(context: context,
      firstDate: DateTime(1900), 
      initialDate: DateTime(2020),
      lastDate: DateTime.now()).then ((DateTime dt) {
      setState(() {
        selectedYear = dt.year;
        hitungUmur();
      }
      );
    });
  }

  void hitungUmur() {
    setState(() {
      age = (2020 - selectedYear).toDouble();
    });

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
            RaisedButton(
              padding: EdgeInsets.all(20),
              child: Text(selectedYear != null ? selectedYear.toString(): 'PIlih Tahun Lahir Anda',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              ),
              color: Colors.blue[900],
              onPressed: _showPicker,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
            ),
            Text('Usia Anda Saat ini ${age.toStringAsFixed(0)}', style: TextStyle(
              fontSize: 30.0, fontWeight: FontWeight.bold,
            ),),
          ],
        ),

      ),
    );
  }
}