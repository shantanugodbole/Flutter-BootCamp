import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue[900],
            title: Text(
              "Ask me Anything!",
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: MainPage(),
        ),
      ),
    );

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int vary;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                    child: FlatButton(
                  onPressed: () {
                    setState(() {
                      vary = Random().nextInt(5) + 1;
                    });
                  },
                  child: Image.asset(
                    'images/ball$vary.png',
                    height: 400.0,
                    width: 400.0,
                  ),
                )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
