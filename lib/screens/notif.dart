import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_media/shared.dart';

class mynotifications extends StatelessWidget {
  const mynotifications({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(221, 32, 32, 32),
        title: Text(
          "Notifications",
          style: GoogleFonts.arapey(
            textStyle: const TextStyle(color: Color.fromARGB(255, 25, 84, 26), fontSize: 28),
          ),
        ),
      ),
      backgroundColor: Colors.black,
      body: ListView.builder(
      itemCount: Likedposts.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 40, 
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              color: Color.fromARGB(221, 32, 32, 32),
            ),
            child: Row(children: [
                SizedBox(width: 8),
                Container(height: 35,width: 35,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(Likedposts[index].image),fit: BoxFit.cover))),
                SizedBox(width: 8),
                Text("Someone liked your post", style: GoogleFonts.arapey(textStyle: const TextStyle(color: Color.fromARGB(255, 137, 137, 124), fontSize: 18))),
              ],
            ),
          ),
        );}
       
      ),
    );
  }
}


