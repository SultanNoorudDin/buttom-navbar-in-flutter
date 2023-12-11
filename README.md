## Flutter Bottom Navbar

## Overview

The `BottomNavbar` widget is a customizable bottom navigation bar component built for Flutter applications. It provides an intuitive way to navigate between different sections of your app.

### Features

- **Customizable Icons**: Easily replace icons for various sections.
- **Dynamic Content**: Updates displayed content based on the selected index.

## Installation

1. Add this package to your `pubspec.yaml`:

   ```yaml
   dependencies:
     flutter:
       sdk: flutter
     # other dependencies...
   ```

2. Install dependencies:

   ```bash
   flutter pub get
   ```

## Usage

1. Import the widget:

   ```dart
   import 'package:flutter/material.dart';
   
   // Import the BottomNavbar widget.
   import 'path_to_bottom_navbar/bottom_navbar.dart';
   ```

2. Implement the `BottomNavbar` widget:

   ```dart
   class MyHomePage extends StatelessWidget {
     @override
     Widget build(BuildContext context) {
       return Scaffold(
         appBar: AppBar(
           title: Text('My App'),
         ),
         body: Center(
           child: Text('My App Content Here'),
         ),
         bottomNavigationBar: BottomNavbar(),
       );
     }
   }
   ```

3. Customize the icons and labels to suit your app's sections:

   ```dart
   BottomNavigationBar(
     onTap: (index) {
       // Handle taps and navigate accordingly.
     },
     currentIndex: _selectedIndex,
     items: const [
       BottomNavigationBarItem(
         icon: Icon(Icons.home),
         label: 'Home',
       ),
       BottomNavigationBarItem(
         icon: Icon(Icons.phone),
         label: 'Calls',
       ),
       // Add more items as needed...
     ],
   )
   ```

## Note

You can add 2 or more icons/ buttons on navbar.

## State change

The state changes on tapping the desired icon/button on navbar, this is implemented in BottomNavbar class

## Acknowledgements

Special thanks to the Flutter community and contributors for their valuable libraries and resources.

---
