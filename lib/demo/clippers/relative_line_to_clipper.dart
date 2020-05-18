import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class RelativeLineToClipper extends StatefulWidget {
  @override
  _RelativeLineToClipperState createState() => _RelativeLineToClipperState();
}

class _RelativeLineToClipperState extends State<RelativeLineToClipper> {
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
      ..moveTo(size.width/2, 0)
      ..relativeLineTo(50, size.height)
      ..lineTo(size.width , size.height)
      ..close();

    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
