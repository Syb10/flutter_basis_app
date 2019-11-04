import 'package:flutter/material.dart';

class HavaneserScreen extends StatefulWidget {
  @override
  _HavaneserScreenState createState() => _HavaneserScreenState();
}

class _HavaneserScreenState extends State<HavaneserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Havaneser"),
      ),
      body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                child: Image(
                  image: AssetImage("assets/images/havaneser.jpg"),

                ),
              ),
              machMirNeReihe("Wiederristhöhe:"," 23-27 cm"),
              machMirNeReihe("Gewicht:"," 3,5-6 kg"),
              machMirNeReihe("Lebenserwartung:"," 13-15 Jahre"),
              machMirNeReihe("Fell:" ," langes Deckharr"),
              machMirNeReihe("Charakterzüge: "," aufgweckt"),
            ],
          ),
        ),
      );
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
}
