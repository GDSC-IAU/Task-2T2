import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_media/screens/postcard.dart';
import 'package:social_media/screens/postscreen.dart';
import 'package:social_media/screens/profile_page.dart';


class myprofile extends StatefulWidget {
  myprofile({super.key});

  @override
  State<myprofile> createState() => _myprofileState();
}

class _myprofileState extends State<myprofile> {
  void _nav(BuildContext context,post) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => mypost(post: post,)),
  );
}

  final List<Post> posts = [
    Post(image: 'assets/post1.jpg', comment: 'the.boss: heheheh i bit mommy'),
    Post(image: 'assets/post2.jpg', comment: 'the.boss: Oops!…I Did It Again'),
    Post(image: 'assets/post3.jpg', comment: 'the.boss: i think mommy is angry'),
    Post(image: 'assets/post5.jpg', comment: 'the.boss: mommy obsessed with me'),
    Post(image: 'assets/post8.jpg', comment: 'the.boss: just look at this beauty'),
    Post(image: 'assets/post7.jpg', comment: 'the.boss: manicure time'),
  ];

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text('@the.boss',style: GoogleFonts.arapey(textStyle: const TextStyle(color: Color.fromARGB(255, 25, 84, 26),
              fontSize: 28))), backgroundColor: const Color.fromARGB(221, 32, 32, 32)),
      body: Column( crossAxisAlignment: CrossAxisAlignment.center,children: [
          const SizedBox(height: 20),
          const CircleAvatar(radius: 70, backgroundImage: AssetImage('assets/post9.jpg')),
          const SizedBox(height: 20),
          Row(mainAxisAlignment: MainAxisAlignment.center,children: [
    profileInfo('${posts.length}', 'Posts'),
    const SizedBox(width: 20),
    profileInfo('100k', 'Followers'),
    const SizedBox(width: 20),
    profileInfo('50', 'Following')]),const SizedBox(height: 20),
          Container(child: Text("Hi i'm kiwi a green quaker parrot ",style: GoogleFonts.arapey(textStyle: const TextStyle(color: Color.fromARGB(255, 208, 208, 169),
              fontSize: 17))),),const SizedBox(height: 10),
              Container(

                height: 30,width: 100,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromARGB(255, 46, 44, 45) ),
                child: GestureDetector(onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) => tryprofile()));},
                child: Row(children: [Padding( padding: const EdgeInsets.only(left: 5.0, bottom: 5),
          child: IconButton(icon: Icon(Icons.edit),onPressed: () {})),
        Text( "Edit",style: GoogleFonts.arapey(textStyle: const TextStyle(
              color: Color.fromARGB(255, 152, 152, 148),fontSize: 15)))]))),
const SizedBox(height: 20),
          Expanded(
            child: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3 ),
              itemCount: posts.length,itemBuilder: (BuildContext context, int index) { return GestureDetector(
                  onTap: () => _nav(context,posts[index]),
                  child: Padding( padding: const EdgeInsets.all(4.5),
                  child: Image.asset(posts[index].image, fit: BoxFit.cover)));})
          ) ] ) );}
}
class Post {
  final String image;
  final String comment;
  bool Likedpost;

  Post({
    required this.image,
    required this.comment,
    this.Likedpost = false
  });
}

Widget profileInfo(String value, String label) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        child: Text(value,style: GoogleFonts.arapey( textStyle: const TextStyle(color: Color(0xFFDEDE66),fontSize: 17))) ),
      Container(
        child: Text(label,style:  GoogleFonts.arapey( textStyle: const TextStyle(color: Color(0xFFDEDE66),fontSize: 11))))]);}
