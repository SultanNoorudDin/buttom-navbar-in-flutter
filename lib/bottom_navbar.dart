import 'package:flutter/material.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int appIdx = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom navbar code"),
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (idx) {
            setState(() {
              appIdx = idx;
            });
          },
          currentIndex: appIdx,
          items: const [
            // for home icon
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),

            // for calls
            BottomNavigationBarItem(icon: Icon(Icons.phone), label: 'Calls')
          ]),
    );
  }
}
