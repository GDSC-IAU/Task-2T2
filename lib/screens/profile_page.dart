import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_media/screens/my_profile.dart';


class tryprofile extends StatelessWidget{
  const tryprofile({super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,appBar: AppBar( iconTheme: const IconThemeData(color: Color.fromARGB(255, 34, 82, 36)),
    title: Text(" Edit profile",style: GoogleFonts.arapey(textStyle: const TextStyle(color: Color.fromARGB(255, 25, 84, 26),
              fontSize: 28))),backgroundColor: const Color.fromARGB(221, 32, 32, 32),),
      body: Column(
      children: [
              const Center(
                child:
                    CircleAvatar(
                      radius: 70,backgroundImage: AssetImage('assets/post9.jpg') )),
      const SizedBox(height: 20),
       Container(
          child:  Row( mainAxisAlignment: MainAxisAlignment.center,
           children: [const SizedBox(width: 5),Text("Email:",style: GoogleFonts.arapey(textStyle:const TextStyle(color: Color.fromARGB(255, 236, 236, 187),
              fontSize: 20)))])),
        const my_profile(text: "kiwi@hotmail.com",icon: Icon(Icons.email), iconColor: Color.fromARGB(255, 240, 235, 236)),
        Container(
          child:  Row( mainAxisAlignment: MainAxisAlignment.center,
           children: [const SizedBox(width: 5),Text("Phone number:",style: GoogleFonts.arapey(textStyle:const TextStyle(color: Color.fromARGB(255, 236, 236, 187),
              fontSize: 20)))])),
        const my_profile(text: "0556557944",icon: Icon(Icons.phone),iconColor: Color.fromARGB(255, 240, 235, 236),),
       Container(
          child:  Row( mainAxisAlignment: MainAxisAlignment.center,
           children: [const SizedBox(width: 5),Text("Birth date:",style: GoogleFonts.arapey(textStyle:const TextStyle(color: Color.fromARGB(255, 236, 236, 187),
              fontSize: 20)))])),
        const SizedBox(height: 2),
        const my_profile(text: "27/05/2022",icon: Icon(Icons.calendar_today),iconColor: Color.fromARGB(255, 240, 235, 236)),
         Container(
          child:  Row( mainAxisAlignment: MainAxisAlignment.center,
           children: [const SizedBox(width: 5),Text("About me:",style: GoogleFonts.arapey(textStyle:const TextStyle(color: Color.fromARGB(255, 236, 236, 187),
              fontSize: 20)))])),
        const my_profile(text: "Hi i'm kiwi a green quaker parrot ",icon: Icon(Icons.person_2_outlined),iconColor: Color.fromARGB(255, 240, 235, 236)),
      ],)) 
    ;
  }}