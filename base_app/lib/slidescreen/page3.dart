import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Intropage3 extends StatefulWidget {
  const Intropage3({super.key});

  @override
  State<Intropage3> createState() => _Intropage3State();
}

class _Intropage3State extends State<Intropage3> {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topRight,
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              ' La pâtisserie et l\'amour,       c\'est pareil - une question de fraîcheur et que tous les ingrédients, même les plus amers, tournent au délice.',
              style: GoogleFonts.lobster(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage('asset/bar1.jpeg')),
        ));
  }
}
