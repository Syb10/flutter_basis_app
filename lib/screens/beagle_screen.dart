import 'package:flutter/material.dart';

class BeagleScreen extends StatefulWidget {
  @override
  _BeagleScreenState createState() => _BeagleScreenState();
}

class _BeagleScreenState extends State<BeagleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:Text("Beagle"),
      ),
      body: SingleChildScrollView(
        child: Column(
            children:<Widget>[
              Container(
                child: Image(
                  image:AssetImage("assets/images/beagle-13245.jpg"),
                ),
              ),
              machMirNeReihe("Widerristhöhe: ", "33-40cm"),
              machMirNeReihe("Gewicht: ", "10-18kg"),
              machMirNeReihe("Lebenserwartung: ", "12-15 Jahre"),
              machMirNeReihe("Fell: ", "kurz und dicht"),
              machMirNeReihe("Charakterzüge: ", "wachsam, fröhlich"),
            ]

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

