import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Intropage1 extends StatefulWidget {
  const Intropage1({super.key});

  @override
  State<Intropage1> createState() => _Intropage1State();
}

class _Intropage1State extends State<Intropage1> {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topRight,
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                ' Il est incontestable que de tous les arts, l\'art culinaire est celui qui nourrit le mieux son homme.',
                style: GoogleFonts.lobster(fontSize: 16, color: Colors.grey),
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage('asset/cuisine_intro.jpg')),
        ));
  }
}
