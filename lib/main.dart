import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:eseksa/constant/Constant.dart';
import 'package:eseksa/views/onboarding/OnBoardingPage.dart';
import 'package:eseksa/views/splashscreen/SplashPage.dart';
import 'package:eseksa/utils/colors.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      title: 'E-Seksa',
      theme: ThemeData(
        fontFamily: 'Kantumruy',
        primaryColor: SEKSAColors.primary,
        accentColor: SEKSAColors.primary,
      ),
      home: SplashPage(),
      routes: <String, WidgetBuilder>{
        onBoardingPage: (BuildContext context) => new OnBoardingPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
