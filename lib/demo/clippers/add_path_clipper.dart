import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class AddPathClipper extends StatefulWidget {
  @override
  _AddPathClipperState createState() => _AddPathClipperState();
}

class _AddPathClipperState extends State<AddPathClipper> {
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

    Path path1 = Path()
      ..lineTo(0, size.height)
      ..lineTo(size.width/2, size.height)
      ..lineTo(0, 0);

    Path path2 =Path()
      ..lineTo(size.width/2, size.height)
      ..lineTo(size.width/2, 0)
      ..lineTo(0, 0);

    path1.addPath(path2, Offset(size.width/2,0));

    return path1;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
