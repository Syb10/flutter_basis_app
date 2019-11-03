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
      body:
        Container(
          child:Image (
            image:AssetImage("assets/images/husky.jpg"),
          ),
        ),

    );
  }
}
