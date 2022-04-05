import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApplication());
}

class MyApplication extends StatelessWidget {
  const MyApplication({Key? key}) : super(key: key);

  final imageUrl = "https://avatars.githubusercontent.com/u/94838402?v=4";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.green),
      darkTheme: ThemeData(brightness: Brightness.dark),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My App"),
        ),
        body: const Center(
          child: Text("Hello World"),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                  padding: EdgeInsets.zero,
                  child: UserAccountsDrawerHeader(
                    accountName: Text("Shahin Alom"),
                    accountEmail: Text("shahin@gmail.com"),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(imageUrl),
                    ),
                  )),
              ListTile(
                leading: Icon(CupertinoIcons.home, color: Colors.black87),
                title: Text("Home",
                    textScaleFactor: 1.2,
                    style: TextStyle(color: Colors.black87)),
              ),
              const ListTile(
                leading:
                    Icon(CupertinoIcons.profile_circled, color: Colors.black87),
                title: Text("Profile",
                    textScaleFactor: 1.2,
                    style: TextStyle(color: Colors.black87)),
              ),
              ListTile(
                leading: Icon(CupertinoIcons.mail, color: Colors.black87),
                title: Text("Contact",
                    textScaleFactor: 1.2,
                    style: TextStyle(color: Colors.black87)),
              ),
              ListTile(
                leading: Icon(CupertinoIcons.arrow_left_square,
                    color: Colors.black87),
                title: Text("Log Out",
                    textScaleFactor: 1.2,
                    style: TextStyle(color: Colors.black87)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
