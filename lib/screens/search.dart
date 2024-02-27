import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class mysearch extends StatelessWidget {
  const mysearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 1.2,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromARGB(255, 68, 66, 67),),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child:Icon( Icons.search)),const SizedBox(width: 8),
                    Text("Search",style: GoogleFonts.arapey(textStyle: const TextStyle(color: Color.fromARGB(255, 137, 137, 124),
              fontSize: 18)))] )) ]))])
    );
  }
}