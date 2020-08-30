import 'package:eseksa/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: SEKSAColors.grey200,
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Feather.align_left),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          title: Center(
            child: Text(
              'ទំព័រដើម',
              style: TextStyle(
                  fontFamily: 'Kantumruy',
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Feather.bell),
              onPressed: () => {},
            ),
            IconButton(
              icon: Icon(Icons.translate),
              onPressed: () => {},
            ),
          ],
        ),
        body: Center(
          child: Text('ទំព័រដើម'),
        ));
  }
}
