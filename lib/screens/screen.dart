import 'package:flutter/material.dart';
import 'package:social_media/screens/home.dart';
import 'package:social_media/screens/notif.dart';
import 'package:social_media/screens/postcard.dart';
import 'package:social_media/screens/profile.dart';
import 'package:social_media/screens/search.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_media/screens/stories.dart';
class MyWidget extends StatefulWidget {
   MyWidget({super.key});
 
  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
   int indexs=0;
   

  final List<Widget> myPages=[
    myhome(),
    myprofile(),
    mysearch(),
    mynotifications(),
  ];
  
  

  void selectedpage(n){
   setState(() {
     indexs=n;
   }); 
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
        body: myPages[indexs],
        
        bottomNavigationBar: BottomNavigationBar(currentIndex: indexs,selectedItemColor: Colors.lightGreen,unselectedItemColor:  const Color.fromARGB(255, 28, 77, 29),selectedLabelStyle: GoogleFonts.arapey(fontSize: 12),
          backgroundColor: const Color.fromARGB(221, 32, 32, 32),
          items: const [
          BottomNavigationBarItem(backgroundColor:  Color.fromARGB(221, 32, 32, 32),icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(backgroundColor:  Color.fromARGB(221, 32, 32, 32),icon: Icon(Icons.person,),label: "Profile"),
          BottomNavigationBarItem(backgroundColor:  Color.fromARGB(221, 32, 32, 32),icon: Icon(Icons.search),label: "Search"),
          BottomNavigationBarItem(backgroundColor:  Color.fromARGB(221, 32, 32, 32),icon: Icon(Icons.notifications),label: "Notifications")
        ],
        onTap: selectedpage,) ,
    );
    }}

