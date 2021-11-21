// ignore_for_file: prefer_const_constructors, prefer_const_declarations

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_first/util/routes.dart';
import 'package:url_launcher/url_launcher.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://upload.wikimedia.org/wikipedia/commons/9/99/Sample_User_Icon.png";
    return Drawer(
      child: Container(
        color: Colors.grey[400],
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("User"),
                decoration:
                    BoxDecoration(color: new Color.fromRGBO(121, 59, 219, 1)),
                accountEmail: Text("abc@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                  backgroundColor: Colors.grey,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.black,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.loginRoute);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.style,
                color: Colors.black,
              ),
              title: Text(
                "Flash Cards",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onTap: () {
                launch("https://en.m.wikipedia.org/wiki/Flashcard");
              },
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.stopwatch,
                color: Colors.black,
              ),
              title: Text(
                "Pomodoro",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onTap: () {
                launch("https://en.m.wikipedia.org/wiki/Pomodoro_Technique");
              },
            ),
            ListTile(
              leading: Icon(
                Icons.checklist,
                color: Colors.black,
              ),
              title: Text(
                "To-Do List",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onTap: () {
                launch(
                    "https://in.pcmag.com/get-organized/136553/10-ways-to-make-better-to-do-lists");
              },
            ),
          ],
        ),
      ),
    );
  }
}
