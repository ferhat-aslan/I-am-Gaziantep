// ignore_for_file: prefer_const_constructors
import 'dart:async';

import 'package:deneme_tahtasi/onepage.dart';
import 'package:deneme_tahtasi/twopage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Colors.black12,
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'I am Gaziantep App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter = 0;
  Widget secilisayfa = pageone();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // ignore: prefer_const_literals_to_create_immutables
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            currentIndex: counter,
            onTap: (int) {
              setState(() {
                counter = int;
                secilisayfa = (int == 0) ? pageone() : pagetwo();
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_max_outlined,
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.star_border_outlined,
                  ),
                  label: 'Map'),
            ]),
        body: secilisayfa
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
