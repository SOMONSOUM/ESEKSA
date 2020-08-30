import 'package:eseksa/models/User.dart';
import 'package:eseksa/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

Widget drawerWidget() {
  return Drawer(
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
                  User.username,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )
              ],
            ),
          ),
          decoration: BoxDecoration(
            color: SEKSAColors.primary,
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
  );
}
