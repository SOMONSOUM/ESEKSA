import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:eseksa/App.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) => ResponsiveWrapper.builder(
        BouncingScrollWrapper.builder(context, child),
        maxWidth: 1200,
        minWidth: 450,
        defaultScale: true,
        breakpoints: [
          ResponsiveBreakpoint.resize(450, name: MOBILE),
          ResponsiveBreakpoint.autoScale(650, name: TABLET, scaleFactor: 1.25),
          ResponsiveBreakpoint.autoScale(800, name: TABLET, scaleFactor: 1.4),
          ResponsiveBreakpoint.autoScale(1000, name: TABLET, scaleFactor: 1.8),
        ],
        background: Container(color: Color(0xFFF5F5F5)),
      ),
      title: 'E-Seksa',
      theme: ThemeData(
        primaryColor: Color(0xFF170ec2),
        accentColor: Colors.cyan[600],
        fontFamily: 'Kantumruy',
      ),
      home: App(),
      debugShowCheckedModeBanner: false,
    );
  }
}
