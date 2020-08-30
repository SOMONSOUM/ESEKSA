import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:eseksa/constant/Constant.dart';
import 'package:eseksa/utils/colors.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 4),
      () => Navigator.of(context).pushReplacementNamed(onBoardingPage),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: SEKSAColors.primary,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.transparent,
                        child: Image.asset('assets/images/eseksa.png'),
                        radius: 50,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          'E-SEKSA',
                          style: TextStyle(
                              fontFamily: 'Alibaba Sans',
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SpinKitThreeBounce(
                      color: Colors.white,
                      size: 30.0,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 100),
                    ),
                    Text(
                      'រក្សាសិទ្ធគ្រប់យ៉ាងដោយ អុី-សិក្សា',
                      style: TextStyle(
                        fontFamily: 'Kantumruy',
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
