import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class AddRectClipper extends StatefulWidget {
  @override
  _AddRectClipperState createState() => _AddRectClipperState();
}

class _AddRectClipperState extends State<AddRectClipper> {
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
      ..addRect(Rect.fromPoints(Offset(0, 0), Offset(60, 60)))
      ..addRect(Rect.fromLTWH(0, size.height - 50, 50, 50))
      ..addRect(Rect.fromCircle(
          center: Offset(size.width / 2, size.height / 2), radius: 20));

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
