import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class AddPolygonClipper extends StatefulWidget {
  @override
  _AddPolygonClipperState createState() => _AddPolygonClipperState();
}

class _AddPolygonClipperState extends State<AddPolygonClipper> {
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
    var points = [
      Offset(size.width / 2, 0), // point p1
      Offset(0, size.height / 2), // point p2
      Offset(size.width / 2, size.height), // point p3
      Offset(size.width, size.height / 2) // point p4
    ];

    Path path = Path()
      ..addPolygon(points, false)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
