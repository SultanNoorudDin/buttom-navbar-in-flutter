Bottom Navigation Bar Widget

This Flutter widget demonstrates the implementation of a simple bottom navigation bar.
Overview

The BottomNavbar widget is a stateful widget that creates a bottom navigation bar with two icons: Home and Calls. Tapping on any of the icons updates the current index and changes the displayed content accordingly.
Code Sample

The code for the BottomNavbar widget is shown below:

dart

import 'package:flutter/material.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int appIdx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Navbar Example"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (idx) {
          setState(() {
            appIdx = idx;
          });
        },
        currentIndex: appIdx,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone),
            label: 'Calls',
          ),
        ],
      ),
    );
  }
}

Usage

    Incorporate the BottomNavbar widget into your Flutter project.
    Customize the icons and labels as needed for your application.
    Use this widget as a part of your navigation structure, providing users with easy access to various sections of your app.

License

This code is provided under the MIT License. Feel free to modify and use it in your projects.
