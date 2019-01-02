import 'package:flutter/material.dart';


class Second extends StatefulWidget {

  @override
  State<Second> createState() => new SecondState();
}

class SecondState extends State<Second> {

  @override
  Widget build(BuildContext context) {
    print("second++initState");
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("想法"),
          actions: <Widget>[
            Container(),
          ],
        ),

        body: Center(
          child: null,
        ),
      ),
    );
  }
}