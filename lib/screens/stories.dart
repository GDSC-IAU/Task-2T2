import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StoryLine extends StatelessWidget {
  StoryLine({Key? key});

  final List<_stories> story = [
    _stories(image: 'assets/post6.jpg', comment: 'fav meal'),
  ];
   String profilepic = 'assets/post9.jpg';
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.builder(scrollDirection: Axis.horizontal, itemCount: story.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(onTap: () => _nav(context, story[index]),
            child: Padding(padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Stories",style: GoogleFonts.arapey( textStyle: const TextStyle(color: Color.fromARGB(255, 208, 208, 169),fontSize: 15,
            ) )), const SizedBox(height: 5),
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage(profilepic)),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void _nav(BuildContext context, _stories story) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => _StoryDetailPage(story: story)),
    );
  }
}

class _stories {
  final String image;
  final String comment;

  _stories({required this.image, required this.comment});
}

class _StoryDetailPage extends StatelessWidget {
  final _stories story;

  const _StoryDetailPage({Key? key, required this.story}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.green),
        title: Text("story",style: GoogleFonts.arapey(textStyle: const TextStyle(color: Color.fromARGB(255, 25, 84, 26),fontSize: 28 ))),
        backgroundColor: const Color.fromARGB(221, 32, 32, 32)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Center(child: Container(
              height: MediaQuery.of(context).size.height / 1.5,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage(story.image) )))),
          const SizedBox(height: 10),
          Center(
            child: Text(story.comment,style: GoogleFonts.arapey(textStyle: const TextStyle( color: Color.fromARGB(255, 208, 208, 169),fontSize: 18),
              )) ),
        ],
      ),
    );
  }
}
