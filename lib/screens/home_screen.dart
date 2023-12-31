import 'package:flutter/material.dart';

import '../components/home_screen_component.dart';
import 'color_screen.dart';
import 'family_screen.dart';
import 'numbers_screen.dart';
import 'phrases_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  /* Container item(Color c, String txt) {
    return Container(
      // margin: EdgeInsets.all(16),
      width: double.infinity,
      alignment: Alignment.centerLeft,
      height: 60,
      padding: EdgeInsets.only(left: 20),
      // color: Color(0xfffa9532),
      color: c,
      child: Text(txt,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          )),
    );
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffff4da),
      appBar: AppBar(
        backgroundColor: const Color(0xff4a322b),
        title: const Text("Toku"),
      ),
      body: Column(
        children: [
          GestureDetector(
            child: const HomeItem(color: Color(0xfffa9532), txt: "Numbers"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NumbersScreen(),
                ),
              );
            },
          ),
          GestureDetector(
              child: const HomeItem(
                  color: Color(0xff538033), txt: "Family Members"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FamilyScreen()));
              }),

          GestureDetector(
            child: const HomeItem(color: Color(0xff7e3fa3), txt: "Colors"),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ColorScreen(),
                )),
          ),
          GestureDetector(
            child: const HomeItem(color: Color(0xff48a5cc), txt: "Phrases"),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PhrasesScreen(),
                )),
          ),
          // Container(
          //   width: double.infinity,
          //   alignment: Alignment.centerLeft,
          //   height: 40,
          //   padding: EdgeInsets.only(left: 20),
          //   color: Color(0xff538033),
          //   child:
          //       Text("Family Members", style: TextStyle(color: Colors.white)),
          // ),
          // Container(
          //   width: double.infinity,
          //   alignment: Alignment.centerLeft,
          //   height: 40,
          //   padding: EdgeInsets.only(left: 20),
          //   color: Color(0xff7e3fa3),
          //   child: Text("Colors", style: TextStyle(color: Colors.white)),
          // ),
          //  Container(
          //   width: double.infinity,
          //   alignment: Alignment.centerLeft,
          //   height: 40,
          //   padding: EdgeInsets.only(left: 20),
          //   color: Color(0xff48a5cc),
          //   child: Text("Phrases", style: TextStyle(color: Colors.white)),
          // ),
        ],
      ),
    );
  }
}
