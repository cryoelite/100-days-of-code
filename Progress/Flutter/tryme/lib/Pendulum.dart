import 'dart:math';

class Pendulum {
  double armLength;
  double angle;
  double angVel;
  double angAcc;
  static const damp = 0.995;
  var origin;
  void position() {}
  void go() {
    update();
    display();
  }

  Pendulum({
    this.origin,
    this.armLength = 1,
    this.angle = pi / 4,
    this.angVel = 0.0,
    this.angAcc = 0.0,
  });

  void update() {
    var gravity = 0.4;
    this.angAcc = (-1 * gravity / this.armLength) * sin(this.angle);
    this.angVel += this.angAcc;
    this.angle += this.angVel;
    this.angVel *= Pendulum.damp;
  }
  void display(){
    
  }
}
