import 'package:flutter/material.dart';

void main() => runApp(Mainly());

class Mainly extends StatefulWidget {
  @override
  _MainlyState createState() => _MainlyState();
}

class _MainlyState extends State<Mainly> with SingleTickerProviderStateMixin {
  AnimationController _cc;
  @override
  void initState() {
    _cc = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
    );
    super.initState();
  }

  void dispose() {
    _cc.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        color: Colors.white,
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: AnimatedBuilder(
            animation: _cc.view,
            builder: (context, snapshot) {
              return buildClipOval();
            }
          ),
        ),
      ),
    );
  }

  ClipOval buildClipOval() {
    return ClipOval(
      child: Container(
        color: Colors.black,
        child: Icon(
          Icons.android,
          size: 100,
          color: Colors.green,
        ),
      ),
    );
  }
}
