import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:eseksa/constant/Constant.dart';
import 'package:eseksa/views/splashscreen/splash_page.dart';
import 'package:eseksa/views/onboarding/on_boarding_page.dart';
import 'package:flutter/material.dart';
import 'package:eseksa/utils/colors.dart';

Future<void> main() async {
  runApp(MyApp());
}

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
      initialRoute: homePage,
      routes: <String, WidgetBuilder>{
        onBoardingPage: (BuildContext context) => new OnBoardingPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
