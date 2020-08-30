import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:eseksa/utils/colors.dart';

class BookPage extends StatefulWidget {
  @override
  _BookPageState createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SEKSAColors.grey200,
      key: _scaffoldKey,
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
            'សៀវភៅ',
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text('សៀវភៅទាំងអស់'),
          )
        ],
      ),
    );
  }
}
