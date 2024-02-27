import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_media/screens/notif.dart';
import 'package:social_media/screens/profile.dart';
import 'package:social_media/shared.dart';

class postsview extends StatefulWidget {
   postsview({Key?key});

  @override
  State<postsview> createState() => _postsviewState();
}

class _postsviewState extends State<postsview> {
    final List<Post> posts = [
    Post(image: 'assets/post1.jpg', comment: 'the.boss: heheheh i bit mommy',Likedpost: false),
    Post(image: 'assets/post2.jpg', comment: 'the.boss: Oops!…I Did It Again',Likedpost: false),
    Post(image: 'assets/post3.jpg', comment: 'the.boss: i think mommy is angry',Likedpost: false),
    Post(image: 'assets/post5.jpg', comment: 'the.boss: mommy obsessed with me',Likedpost: false),
    Post(image: 'assets/post8.jpg', comment: 'the.boss: just look at this beauty',Likedpost: false),
    Post(image: 'assets/post7.jpg', comment: 'the.boss: manicure time',Likedpost: false),
  ];
addnotifi(Post post) {
    Likedposts.add(post);
}
  String profilepic = 'assets/post9.jpg';

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (BuildContext context, int index) {
    return Container(
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
          width: double.infinity,child: Image.asset(posts[index].image,fit: BoxFit.cover)),
          Row(children: [
           IconButton(
                    onPressed: () {
                      setState(() {
                        posts[index].Likedpost = !posts[index].Likedpost;
                      });ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Row(
                  children: [
                    Icon(Icons.thumb_up,color: Color.fromARGB(255, 25, 84, 26)),
                    SizedBox(width: 8),
                    Text('You got a like!',style: GoogleFonts.arapey(textStyle: const TextStyle(color: Color.fromARGB(255, 208, 208, 169),
              fontSize: 15))),
                  ])));
                      if (posts[index].Likedpost) {
                        // Add the liked post to Likedposts list
                        addnotifi(posts[index]);
                      }},
                    icon: Icon(
                      posts[index].Likedpost ? Icons.favorite : Icons.favorite_outline,
                      color: posts[index].Likedpost ? Colors.red : Color.fromARGB(255, 208, 208, 169),
                    ),
                  ),
            IconButton(onPressed: (){}, icon: const Icon(Icons.comment_outlined,color: Color.fromARGB(255, 208, 208, 169))),
            IconButton(onPressed: (){}, icon: const Icon(Icons.send_outlined,color: Color.fromARGB(255, 208, 208, 169)))
          ],),
          Container(padding: const  EdgeInsets.only(top: 5,left: 8),
          child:Row(mainAxisAlignment: MainAxisAlignment.start, children: [Text(posts[index].comment,style: GoogleFonts.arapey(textStyle: const TextStyle(color:  Color.fromARGB(255, 208, 208, 169),
                fontSize: 16)))],)  )
      ],),
    );
  });}
}