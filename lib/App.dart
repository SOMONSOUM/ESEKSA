import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            'E-SEKSA',
            style: TextStyle(
                fontFamily: 'Alibaba Sans',
                fontSize: 24,
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
        child: Text(
          'សូមស្វាគមន៍',
          style: TextStyle(fontSize: 20),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Text('សូមស្វាគមន៍'),
              decoration: BoxDecoration(
                color: Color(0xFF170ec2),
              ),
            ),
            ListTile(
              leading: Icon(Feather.home),
              title: Text('ទំព័រដើម'),
              onTap: () {
                // TODO: implement
              },
            ),
            ListTile(
              leading: Icon(Feather.info),
              title: Text('អំពីយើង'),
              onTap: () {
                // TODO: implement
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        backgroundColor: Color(0xFF170ec2),
        selectedIndex: currentIndex,
        showElevation: true,
        itemCornerRadius: 8,
        curve: Curves.easeInBack,
        onItemSelected: (index) => setState(() {
          currentIndex = index;
        }),
        items: [
          BottomNavyBarItem(
            icon: Icon(Feather.home),
            title: Text(
              'ទំព័រដើម',
              style: TextStyle(fontFamily: 'Kantumruy'),
            ),
            activeColor: Colors.white,
            inactiveColor: Colors.grey,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Feather.play_circle),
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
            icon: Icon(Feather.list),
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
