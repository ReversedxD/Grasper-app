// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_first/pages/firstpage.dart';

import 'package:flutter_first/pages/home_page.dart';
import 'package:flutter_first/pages/login_page.dart';
import 'package:flutter_first/pages/todo.dart';
import 'package:flutter_first/todonew.dart';
import 'package:flutter_first/util/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'flash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.blue),
      darkTheme:
          ThemeData(brightness: Brightness.dark, primarySwatch: Colors.red),
      initialRoute: MyRoutes.firstpageRoute,
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => Pomodoro(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.flashRoute: (context) => flashpage(),
        MyRoutes.firstpageRoute: (context) => firstpage(),
        MyRoutes.todoRoute: (context) => App(),
        MyRoutes.newtodoRoute: (context) => MyHomePage(
              title: '',
            ),
      },
    );
  }
}
