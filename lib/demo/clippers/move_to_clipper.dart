import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class MoveToClipper extends StatefulWidget {
  @override
  _MoveToClipperState createState() => _MoveToClipperState();
}

class _MoveToClipperState extends State<MoveToClipper> {
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
    Path path = Path()  // Start from (0,0)
      ..moveTo(size.width/2, 0)   // move path point to (w/2,0)
      ..lineTo(0, size.width)..lineTo(size.width, size.height)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
