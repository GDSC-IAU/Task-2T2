import 'package:flutter/material.dart';
import 'package:social_media/pagesRow.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          // Your background content here
          Container(
            color: Colors.white, // Replace with your background color
          ),
          // Your search rectangle
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              elevation: 4.0,
              child: Column(
                children: [
                  //CardRow name
                  const CardRow(
                    text: "             ",
                    icon: Icon(Icons.search),
                    color: Colors.grey,
                  ),
                  //CardRow email
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
