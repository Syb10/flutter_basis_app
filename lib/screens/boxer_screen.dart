import 'package:flutter/material.dart';

class Boxer_Screen extends StatefulWidget {
  @override
  _Boxer_ScreenState createState() => _Boxer_ScreenState();
}

class _Boxer_ScreenState extends State<Boxer_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Boxer"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              child: Image(
                image: AssetImage("assets/images/boxer.jpg"),
              ),
            ),
            machMirNeReihe("Wiederrishöhe: ", "53-63 cm"),
            machMirNeReihe("Gewicht: ", "25-30kg"),
            machMirNeReihe("Lebenserwartung: ", "10-12 Jahre"),
            machMirNeReihe("Fell: ", "kurz, hart und glänzend"),
            machMirNeReihe("Charakterzüge: ", "wachsam, intelligent"),
          ],
        ),
      ),
    );
  }
}

Widget machMirNeReihe(attribt, wert){
  return
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          Text(
            attribt,
            style: TextStyle(fontSize: 20),
          ),
          Text(
            wert,
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
}
