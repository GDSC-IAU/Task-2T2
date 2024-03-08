import 'package:flutter/material.dart';

import 'package:social_media/screens/navigation_screen.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Social Media App",
      home: NavigationScreen(),
    );
  }
}
