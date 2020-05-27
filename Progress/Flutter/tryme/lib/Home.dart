import 'dart:math';

import 'package:flutter/material.dart';

import './Pendulum.dart';
import './routeConf.dart';

class Homer extends StatefulWidget {
  @override
  _HomerState createState() => _HomerState();
}

class _HomerState extends State<Homer> with SingleTickerProviderStateMixin {
  /* Pendulum p1 = Pendulum();
  AnimationController anim = AnimationController(); */
  var pp = 1;
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    RouterConf().init(context);
    return Scaffold(
      body: buildContainer(),
    );
  }

  Container buildContainer() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.white,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: RouterConf.blockV * 2,
            left: RouterConf.hArea / 2.35,
            child: GestureDetector(
              child: AnimatedContainer(
                height:
                    pp == 1 ? RouterConf.blockH * 200 : RouterConf.blockH *  20,
                duration: Duration(seconds: 5),
                curve: Curvy(count: 5),
                child: ClipOval(
                  child: Icon(
                    Icons.blur_circular,
                    size: 60,
                    color: Colors.grey,
                  ),
                ),
              ),
              onTap: () {
                setState(() {
                  pp == 1 ? pp = 0 : pp = 1;
                });
                ;
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Curvy extends Curve {
  final double count;
  Curvy({this.count = 1});

  @override
  double transformInternal(double t) {
    return sin(count * 2 * pi *t) * 0.5 + 0.5;
  }
}
