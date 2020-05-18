import 'package:flutter/material.dart';
import 'package:flutter_clipper/demo/clippers/add_oval_clipper.dart';
import 'package:flutter_clipper/demo/clippers/add_path_clipper.dart';
import 'package:flutter_clipper/demo/clippers/add_polygon_clipper.dart';
import 'package:flutter_clipper/demo/clippers/arc_to_point_clipper.dart';
import 'package:flutter_clipper/demo/clippers/line_to_clipper.dart';
import 'package:flutter_clipper/demo/clippers/move_to_clipper.dart';
import 'package:flutter_clipper/demo/clippers/quadratic_bezier_to_clipper.dart';
import 'package:flutter_clipper/demo/clippers/relative_line_to_clipper.dart';

import 'clippers/add_rect_clipper.dart';
import 'clippers/arc_to_clipper.dart';
import 'clippers/cubic_to_clipper.dart';
import 'home.dart';

class NavigationUtils {
  static const String routeHome = "routeHome";
  static const String routeLineTo = "routeLineTo";
  static const String routeMoveTo = "routeMoveTo";
  static const String routeQuadraticBezierTo = "routeQuadraticBezierTo";
  static const String routeCubicTo = "routeCubicTo";
  static const String routeArcToPoint = "routeArcToPoint";
  static const String routeArcTo = "routeArcTo";
  static const String routeAddRect = "routeAddRect";
  static const String routeAddOval = "routeAddOval";
  static const String routeAddPolygon = "routeAddPolygon";
  static const String routeAddPath = "routeAddPath";
  static const String routeRelativeLineTo = "routeRelativeLineTo";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case routeHome:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case routeLineTo:
        return MaterialPageRoute(builder: (_) => LineToClipper());
      case routeMoveTo:
        return MaterialPageRoute(builder: (_) => MoveToClipper());
      case routeQuadraticBezierTo:
        return MaterialPageRoute(builder: (_) => QuadraticBezierToClipper());
      case routeCubicTo:
        return MaterialPageRoute(builder: (_) => CubicToClipper());
      case routeArcToPoint:
        return MaterialPageRoute(builder: (_) => ArcToPointClipper());
      case routeArcTo:
        return MaterialPageRoute(builder: (_) => ArcToClipper());
      case routeAddRect:
        return MaterialPageRoute(builder: (_) => AddRectClipper());
      case routeAddOval:
        return MaterialPageRoute(builder: (_) => AddOvalClipper());
      case routeAddPolygon:
        return MaterialPageRoute(builder: (_) => AddPolygonClipper());
      case routeAddPath:
        return MaterialPageRoute(builder: (_) => AddPathClipper());
      case routeRelativeLineTo:
        return MaterialPageRoute(builder: (_) => RelativeLineToClipper());
      default:
        {}
    }
  }

  static Future<dynamic> push(BuildContext context, String routeName,
      {Object arguments}) {
    return Navigator.of(context).pushNamed(routeName, arguments: arguments);
  }

  static void pop(BuildContext context, {dynamic args}) {
    Navigator.of(context).pop(args);
  }
}
