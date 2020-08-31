import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:eseksa/utils/colors.dart';
import 'package:eseksa/views/book/book_page.dart';
import 'package:eseksa/views/home/home_page.dart';
import 'package:eseksa/views/test/test_page.dart';
import 'package:eseksa/views/video/video_page.dart';
import 'package:eseksa/widgets/DrawerWidget.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int currentIndex = 0;
  bool isDark = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: [
        HomePage(),
        VideoPage(),
        BookPage(),
        TestPage(),
      ].elementAt(currentIndex),
      drawer: drawerWidget(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: SEKSAColors.primary,
        onPressed: () => setState(() => isDark = true),
        tooltip: 'Change to Dark Mode',
        child: const Icon(Feather.moon),
      ),
      bottomNavigationBar: BottomNavyBar(
        backgroundColor: SEKSAColors.primary,
        selectedIndex: currentIndex,
        showElevation: true,
        itemCornerRadius: 8,
        curve: Curves.easeInBack,
        onItemSelected: (index) => setState(() {
          currentIndex = index;
        }),
        items: [
          BottomNavyBarItem(
            icon: Icon(AntDesign.home),
            title: Text(
              'ទំព័រដើម',
              style: TextStyle(fontFamily: 'Kantumruy'),
            ),
            activeColor: Colors.white,
            inactiveColor: Colors.grey,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(AntDesign.playcircleo),
            title: Text(
              'វីដេអូ',
              style: TextStyle(fontFamily: 'Kantumruy'),
            ),
            activeColor: Colors.white,
            inactiveColor: Colors.grey,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Feather.book_open),
            title: Text(
              'សៀវភៅ',
              style: TextStyle(fontFamily: 'Kantumruy'),
            ),
            activeColor: Colors.white,
            inactiveColor: Colors.grey,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Octicons.list_ordered),
            title: Text(
              'តេស្ត',
              style: TextStyle(fontFamily: 'Kantumruy'),
            ),
            activeColor: Colors.white,
            inactiveColor: Colors.grey,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
