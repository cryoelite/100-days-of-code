import 'package:flutter/material.dart';

import 'package:encrypt/encrypt.dart' as ee;

void main() => runApp(Mainly());

class Mainly extends StatefulWidget {
  @override
  _MainlyState createState() => _MainlyState();
}

class _MainlyState extends State<Mainly> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        color: Colors.white,
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: Text(
            encryptFunc(),
          ),
        ),
      ),
    );
  }

  String encryptFunc() {
    final key = ee.SecureRandom(8);

    return ("${key.base64} is encryptedText and  is convertedText");
  }
}
