import 'package:flutter/material.dart';

void main() => runApp(M1());

class M1 extends StatefulWidget {
  @override
  _M1State createState() => _M1State();
}

class _M1State extends State<M1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'HelloWorld',
            style: TextStyle(fontSize: 14),
            textAlign: TextAlign.center,
          ),
        ),
        body: Container(
            color: Colors.lightBlue,
            width: double.infinity,
            margin: EdgeInsets.only(top: 300),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[Text('Hello!')],
            )),
      ),
    );
  }
}
