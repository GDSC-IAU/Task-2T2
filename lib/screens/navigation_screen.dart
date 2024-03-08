import 'package:flutter/material.dart';
import 'package:social_media/screens/NotificationsPage.dart';
import 'package:social_media/screens/ProfilePage.dart';
import 'package:social_media/screens/HomePage.dart';
import 'package:social_media/screens/SearchPage.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int _currentIndex = 0;

  final List<Widget> pages = [
    HomePage(),
    Scaffold(
      body: Center(
        child: Text("cart"),
      ),
    ),
    NotificationsPage(),
    ProfilePage(),
  ];

  void _changePage(index) {
    setState(() {
      _currentIndex = index;
    });

    if (_currentIndex == 1) {
      Navigator.of(context)
          .push(MaterialPageRoute(
        builder: (context) => SearchPage(),
      ))
          .then((value) {
        // This code runs after returning from SearchPage
        // You can add any additional logic here
      });
    } else if (_currentIndex == 2) {
      Navigator.of(context)
          .push(MaterialPageRoute(
        builder: (context) => NotificationsPage(),
      ))
          .then((value) {
        // This code runs after returning from NotificationsPage
        // You can add any additional logic here
      });
    } else if (_currentIndex == 3) {
      Navigator.of(context)
          .push(MaterialPageRoute(
        builder: (context) => ProfilePage(),
      ))
          .then((value) {
        // This code runs after returning from ProfilePage
        // You can add any additional logic here
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text("Social Media App"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        titleSpacing: 0.0, // Adjust the value as needed
      ),
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: "Notifications"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_sharp), label: "Profile"),
        ],
        onTap: _changePage,
      ),
    );
  }
}
