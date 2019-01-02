import 'package:flutter/material.dart';


class Third extends StatefulWidget {

  @override
  State<Third> createState() => new ThirdState();
}

class ThirdState extends State<Third> {

  @override
  Widget build(BuildContext context) {
    print("third++initState");
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("市场"),
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