import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

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
              child: Center(
                child: Column(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("assets/images/man.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Text(
                      'សុខ ដារ៉ា',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )
                  ],
                ),
              ),
              decoration: BoxDecoration(
                color: Color(0xFF5B16D0),
              ),
            ),
            ListTile(
              leading: Icon(Feather.user_check),
              title: Text('ព័ត៌មានអំពីខ្ញុំ'),
              onTap: () {
                // TODO: implement
              },
            ),
            ListTile(
              leading: Icon(AntDesign.appstore_o),
              title: Text('ផ្សេងៗ'),
              onTap: () {
                // TODO: implement
              },
            ),
            ListTile(
              leading: Icon(AntDesign.infocirlceo),
              title: Text('អំពីយើង'),
              onTap: () {
                // TODO: implement
              },
            ),
            ListTile(
              leading: Icon(AntDesign.setting),
              title: Text('ការកំណត់'),
              onTap: () {
                // TODO: implement
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF5B16D0),
        onPressed: () => setState(() => isDark = true),
        tooltip: 'Change to Dark Mode',
        child: const Icon(Feather.moon),
      ),
      bottomNavigationBar: BottomNavyBar(
        backgroundColor: Color(0xFF5B16D0),
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
