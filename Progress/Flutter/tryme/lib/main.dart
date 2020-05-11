import 'package:flutter/material.dart';


import 'package:encrypt/encrypt.dart';

void main() => runApp(Mainly());

class Mainly extends StatefulWidget {
  @override
  _MainlyState createState() => _MainlyState();
}

class _MainlyState extends State<Mainly> {
  final pt="sdada";
  final key=Key.fromUtf8(23);
  final iv=IV.fromLength(16)
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        color: Colors.white,
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: Text(
            "yaya",
          ),
        ),
      ),
    );
  }
}
