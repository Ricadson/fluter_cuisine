// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'package:base_app/principal%20screen/cuisine.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Acceuil extends StatefulWidget {
  Acceuil({Key? key}) : super(key: key);

  @override
  _AcceuilState createState() => _AcceuilState();
}

class _AcceuilState extends State<Acceuil> {
  int _currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 70,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Art Culinaire\n Cuisiner avec joie',
                  style: GoogleFonts.lobster(fontSize: 32, color: Colors.blue),
                ),
              ),
              Image(
                image: AssetImage('asset/chef.jpg'),
                height: 300,
              ),
              cuisine1(context),
              SizedBox(
                height: 5,
              ),
              bar(),
              SizedBox(height: 5),
              patisserie(),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blueGrey,
        iconSize: 20,
        selectedFontSize: 18,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            // ignore: deprecated_member_use
            label: 'Acceuil',
            backgroundColor: Colors.teal,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.question_answer),
            // ignore: deprecated_member_use
            label: 'Quizz',
            backgroundColor: Colors.cyan[400],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            // ignore: deprecated_member_use
            label: 'A Propos',
            backgroundColor: Colors.blue[300],
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentindex = index;
          });
        },
      ),
    );
  }
}

Widget cuisine1(context) {
  return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromARGB(255, 166, 193, 234)),
        height: 90,
        width: double.infinity,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Cuisine ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
              ),
            )
          ],
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return Cuisine();
          }),
        );
      });
}

Widget bar() {
  return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromARGB(255, 166, 193, 234)),
        height: 90,
        width: double.infinity,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Bar ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
              ),
            )
          ],
        ),
      ),
      onTap: () {});
}

Widget patisserie() {
  return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromARGB(255, 166, 193, 234)),
        height: 90,
        width: double.infinity,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Patisserie ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
              ),
            )
          ],
        ),
      ),
      onTap: () {});
}
