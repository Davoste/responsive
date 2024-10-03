import 'package:flutter/material.dart';

var myBackground = Colors.grey.shade300;

var myAppBar = AppBar(
  backgroundColor: Colors.grey.shade900,
);
var myDrawer = Drawer(
  backgroundColor: Colors.grey.shade300,
  child: const Column(
    children: [
      DrawerHeader(child: Icon(Icons.favorite)),
      ListTile(
        leading: Icon(Icons.home),
        title: Text("D A S H"),
      ),
      ListTile(
        leading: Icon(Icons.chat),
        title: Text("C H A T"),
      ),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text("S E T   I T "),
      ),
    ],
  ),
);
