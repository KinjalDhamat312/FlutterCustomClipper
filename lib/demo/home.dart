import 'package:flutter/material.dart';

import 'navigation.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> buttons = [
    "Line To",
    "Move to",
    "Quadratic Bezier To",
    "Cubic To",
    "Arc To Point",
    "Arc To",
    "Add Rect",
    "Add Oval",
    "Add Polygon",
    "Add Path",
    "Add Relative line"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clipper Demo"),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: buttons.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              child: FlatButton(
                color: Colors.blue,
                onPressed: () {
                  buttonClick(index);
                },
                child: Text(
                  buttons[index],
                  style: TextStyle(color: Colors.white),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  buttonClick(int index) {
    switch (index) {
      case 0:
        NavigationUtils.push(context, NavigationUtils.routeLineTo);
        break;
      case 1:
        NavigationUtils.push(context, NavigationUtils.routeMoveTo);
        break;
      case 2:
        NavigationUtils.push(context, NavigationUtils.routeQuadraticBezierTo);
        break;
      case 3:
        NavigationUtils.push(context, NavigationUtils.routeCubicTo);
        break;
      case 4:
        NavigationUtils.push(context, NavigationUtils.routeArcToPoint);
        break;
      case 5:
        NavigationUtils.push(context, NavigationUtils.routeArcTo);
        break;
      case 6:
        NavigationUtils.push(context, NavigationUtils.routeAddRect);
        break;
      case 7:
        NavigationUtils.push(context, NavigationUtils.routeAddOval);
        break;
      case 8:
        NavigationUtils.push(context, NavigationUtils.routeAddPolygon);
        break;
      case 9:
        NavigationUtils.push(context, NavigationUtils.routeAddPath);
        break;
      case 10:
        NavigationUtils.push(context, NavigationUtils.routeRelativeLineTo);
        break;
    }
  }
}
