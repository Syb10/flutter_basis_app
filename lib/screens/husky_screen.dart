import 'package:flutter/material.dart';

class HushyScreen extends StatefulWidget {
  @override
  _HushyScreenState createState() => _HushyScreenState();
}

class _HushyScreenState extends State<HushyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Husky"),
      ),
      body:SingleChildScrollView(
        child: Column(
            children: <Widget> [
              Container(
                child:Image (
                  image:AssetImage("assets/images/husky.jpg"),
                ),
              ),
              machMirNeReihe("Wiederrishöhe: ", "50-60cm"),
              machMirNeReihe("Gewicht: ", "15,5-28kg"),
              machMirNeReihe("Lebenserwartung: ", "12-13 Jahre"),
              machMirNeReihe("Fell: ", "mittellang, anliegend und pelzartig"),
              machMirNeReihe("Charakterzüge: ", "freundlich, aufmerksam"),
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
