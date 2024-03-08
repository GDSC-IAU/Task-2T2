import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Text(
                "Posts: 1000  Followers: 50000  Following: 1000",
                style: TextStyle(fontSize: 16),
              ),
            ),
            // SizedBox(height: 10), // Remove or adjust this SizedBox
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: NetworkImage(
                    "https://cdn-icons-png.freepik.com/512/3270/3270999.png",
                  ),
                ),
              ),
            ),
            Center(
              child: Text(
                "@Fatimah M ",
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 10),
            // Three larger images side by side
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: NetworkImage(
                        "https://www.mendix.com/wp-content/uploads/Blog-Thumbnail_Programming-in-a-Low-Code-World.png",
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: NetworkImage(
                        "https://media.licdn.com/dms/image/D4D12AQH84dbg2sIFug/article-cover_image-shrink_720_1280/0/1691554879476?e=2147483647&v=beta&t=NW9dW-FK2spqCOYI1RYuBp5wmE_f2ouFxWZzXncPN5g",
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: NetworkImage(
                        "https://www.mooc.org/hubfs/applications-of-computer-programming.jpg",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
