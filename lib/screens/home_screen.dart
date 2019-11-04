import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basis_app/screens/HavaneserScreen.dart';
import 'package:flutter_basis_app/screens/beagle_screen.dart';
import 'package:flutter_basis_app/screens/boxer_screen.dart';
import 'package:flutter_basis_app/screens/husky_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("Home"),
        actions: <Widget>[
          Icon(Icons.pregnant_woman),
        ],
      ),
      body: SingleChildScrollView(
        child:Center(
          child: Column(
            children: <Widget>[
              MachBuchstabe("A"),
              MachBuchstabe("B"),
              buildRaisedHunderasseButton(context, "Beagle", BeagleScreen()),
              buildRaisedHunderasseButton(context, "Boxer", Boxer_Screen()),
              MachBuchstabe("C"),
              buildRaisedHunderasseButton(context, "Chihuahua", widget),
              MachBuchstabe("D"),
              buildRaisedHunderasseButton(context, "Dackel", widget),
              buildRaisedHunderasseButton(context, "Dalmatiner", widget),
              MachBuchstabe("E"),
              MachBuchstabe("F"),
              MachBuchstabe("G"),
              MachBuchstabe("H"),
              buildRaisedHunderasseButton(context, "Havaneser", HavaneserScreen()),
              buildRaisedHunderasseButton(context, "Husky", HushyScreen()),
              MachBuchstabe("I"),
              MachBuchstabe("J"),
              MachBuchstabe("K"),
              MachBuchstabe("L"),
              buildRaisedHunderasseButton(context, "Labrador Retriever", widget),
              MachBuchstabe("M"),
              MachBuchstabe("N"),
              MachBuchstabe("O"),
              MachBuchstabe("P"),
              buildRaisedHunderasseButton(context, "Pudel", widget),
              MachBuchstabe("Q"),
              MachBuchstabe("R"),
              MachBuchstabe("S"),
              buildRaisedHunderasseButton(context, "Schäferhund", widget),
              buildRaisedHunderasseButton(context, "Spitz", widget),
              MachBuchstabe("T"),
              MachBuchstabe("U"),
              MachBuchstabe("V"),
              MachBuchstabe("W"),
              MachBuchstabe("X"),
              MachBuchstabe("Y"),
              buildRaisedHunderasseButton(context, "Yorkshire Terrier", widget),
              MachBuchstabe("Z"),

            ],
          ),
        ),
      )
    );
  }

  Widget buildRaisedHunderasseButton(BuildContext context, text, widget) {
    return RaisedButton(
          onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(builder:
                    (context) => widget,
                )
            );
          },
          child: Align(
            alignment: Alignment.center,
            child:Text(text),
          ),
        );
  }
}

Widget MachBuchstabe(text){
  return
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          Text(
            text,
            style: TextStyle(fontSize: 25),
          ),
        ],
      ),
    );

}