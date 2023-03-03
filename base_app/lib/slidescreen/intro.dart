import 'package:base_app/slidescreen/page1.dart';
import 'package:base_app/slidescreen/page2.dart';
import 'package:base_app/slidescreen/page3.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'acceuil.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  // ignore: prefer_final_fields
  PageController _controller = PageController();

  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      PageView(
        controller: _controller,
        onPageChanged: (index) {
          setState(() {
            onLastPage = (index == 2);
          });
        },
        children: [Intropage1(), Intropage2(), Intropage3()],
      ),
      Container(
          alignment: Alignment(0, 0.90),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                  onTap: (() {
                    _controller.jumpToPage(2);
                  }),
                  child: Text(
                    'Skip',
                    style:
                        GoogleFonts.lobster(fontSize: 20, color: Colors.white),
                  )),
              SmoothPageIndicator(controller: _controller, count: 3),
              onLastPage
                  ? GestureDetector(
                      onTap: (() {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Acceuil();
                        }));
                      }),
                      child: Text(
                        'Done',
                        style: GoogleFonts.lobster(
                            fontSize: 20, color: Colors.white),
                      ))
                  : GestureDetector(
                      onTap: (() {
                        _controller.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeIn,
                        );
                      }),
                      child: Text(
                        'Next',
                        style: GoogleFonts.lobster(
                            fontSize: 20, color: Colors.white),
                      )),
            ],
          )),
    ]));
  }
}
