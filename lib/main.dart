import 'package:flutter/material.dart';

import 'demo/home.dart';
import 'demo/navigation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Clipper',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: NavigationUtils.routeHome,
      onGenerateRoute: NavigationUtils.generateRoute,
    );
  }
}
