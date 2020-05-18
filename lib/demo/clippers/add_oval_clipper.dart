import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class AddOvalClipper extends StatefulWidget {
  @override
  _AddOvalClipperState createState() => _AddOvalClipperState();
}

class _AddOvalClipperState extends State<AddOvalClipper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: ClipPath(
          clipper: MyCustomClipper(),
          child: Container(
            width: 200,
            height: 200,
            color: Colors.pink,
          ),
        ),
      ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path()
      ..addOval(Rect.fromPoints(Offset(0, 0), Offset(60, 60)))
      ..addOval(Rect.fromLTWH(0, size.height - 50, 100, 50))
      ..addOval(Rect.fromCircle(
          center: Offset(size.width / 2, size.height / 2), radius: 20))
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
