import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_media/screens/postcard.dart';
import 'package:social_media/screens/profile.dart';
import 'package:social_media/screens/stories.dart';
class myhome extends StatelessWidget {
  myhome({super.key});

  String profilepic = 'assets/post9.jpg';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
        appBar: AppBar(
    backgroundColor: const Color.fromARGB(221, 32, 32, 32),
    title: Text("Kiwi",style: GoogleFonts.pacifico(textStyle: TextStyle(color: Color.fromARGB(255, 28, 77, 29),
          fontSize: 35)))),
       body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 30),
          StoryLine(),
          SizedBox(height: 30),
          Expanded(child: postsview()),
        ],
      ),
    );
  }
}
