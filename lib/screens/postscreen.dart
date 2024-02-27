import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_media/screens/postcard.dart';
import 'package:social_media/screens/profile.dart';

class mypost extends StatelessWidget {
   mypost({super.key,required this.post});
  final Post post;
  String profilepic = 'assets/post9.jpg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,appBar: AppBar( iconTheme: IconThemeData(color: Colors.green),
    title: Text("Post",style: GoogleFonts.arapey(textStyle: const TextStyle(color: Color.fromARGB(255, 25, 84, 26),
              fontSize: 28))),backgroundColor: const Color.fromARGB(221, 32, 32, 32),),
    body:   Container(
      color: Colors.black,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 16).copyWith(right: 0),
          child: Row(children: [
            CircleAvatar(
              radius: 16,backgroundImage: AssetImage(profilepic)),
              Expanded(child: Padding(padding: EdgeInsets.only(left: 8),
              child: Column(mainAxisSize: MainAxisSize.min,crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('the.boss',style: GoogleFonts.arapey(textStyle: const TextStyle(color: Color.fromARGB(255, 208, 208, 169),
              fontSize: 22)))
              ],),)),
              IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert))
          ],)),SizedBox(height: MediaQuery.of(context).size.height*0.35,
          width: double.infinity,child: Image.asset(post.image,fit: BoxFit.cover)),
          Row(children: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline,color: Color.fromARGB(255, 208, 208, 169))),
            IconButton(onPressed: (){}, icon: const Icon(Icons.comment_outlined,color: Color.fromARGB(255, 208, 208, 169))),
            IconButton(onPressed: (){}, icon: const Icon(Icons.send_outlined,color: Color.fromARGB(255, 208, 208, 169)))
          ],),
          Container(padding: const  EdgeInsets.only(top: 5,left: 8),
          child:Row(mainAxisAlignment: MainAxisAlignment.start, children: [Text(post.comment,style: GoogleFonts.arapey(textStyle: const TextStyle(color:  Color.fromARGB(255, 208, 208, 169),
                fontSize: 16)))],) ) ]))
           
              );
  }
}