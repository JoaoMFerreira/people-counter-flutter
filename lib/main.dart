import 'package:flutter/material.dart';

void main() {
  runApp(init());
}

MaterialApp init() {
  return MaterialApp(
    title: "People Counter",
    home: Counter(),
  ); // MaterialApp
}

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _people = 0;

  void _changePeople(int i) {
    setState(() {
      _people += i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "images/original.jpg",
          fit: BoxFit.cover,
          height: 1000.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "People: $_people",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                    disabledColor: Colors.transparent,
                    textColor: Colors.white,
                    child: Text("+1",
                        style: TextStyle(color: Colors.white, fontSize: 40.0)),
                    onPressed: () {
                      _changePeople(1);
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                    disabledColor: Colors.transparent,
                    textColor: Colors.white,
                    child: Text("-1",
                        style: TextStyle(color: Colors.white, fontSize: 40.0)),
                    onPressed: () {
                      _changePeople(-1);
                    },
                  ),
                )
              ],
            ),
            Text(
              "Can Enter!",
              style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontSize: 30.0),
            )
          ],
        )
      ],
    );
  }
}
