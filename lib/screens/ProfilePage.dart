import 'package:flutter/material.dart';
import 'package:social_media/pagesRow.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key});

  @override
  //widget for picture
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: NetworkImage(
                          "https://cdn-icons-png.freepik.com/512/3270/3270999.png"),
                    ),
                  ),
                ),
              ],
            ),
            //CardRow name
            const Column(
              children: [
                CardRow(
                  text: "Fatimah Almousa",
                  icon: Icon(Icons.person),
                  color: Colors.grey,
                ),
                //CardRow email
                SizedBox(height: 10),
                CardRow(
                  text: "fatimah.almousa1424@gmail.com",
                  icon: Icon(Icons.email),
                  color: Colors.grey,
                ),
                SizedBox(height: 10),
                //CardRow phone number
                CardRow(
                  text: "+966 56 276 8762",
                  icon: Icon(Icons.phone_sharp),
                  color: Colors.grey,
                ),
                SizedBox(height: 10),
                //CardRow country
                CardRow(
                  text: "Dammam",
                  icon: Icon(Icons.place),
                  color: Colors.grey,
                ),
                SizedBox(height: 30),
                //CardRow save
                CardRow(
                  text: "SAVE PROFILE",
                  icon: Icon(null),
                  color: Color.fromARGB(255, 9, 113, 161),
                  fontSize: 14.0,
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
