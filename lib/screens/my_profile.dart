import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class my_profile extends StatelessWidget{
  const my_profile({
  required this.text,
  required this.icon,
  required this.iconColor,
  super.key});
  final String text;
  final Icon icon;
    final Color iconColor; 
  
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 1.1,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromARGB(255, 147, 142, 143),),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child:Icon( icon.icon,color: iconColor)),
                    const SizedBox(width: 8),
                    Text(text,style: GoogleFonts.arapey(textStyle: const TextStyle(color: Color.fromARGB(255, 236, 236, 187),
              fontSize: 15))),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
