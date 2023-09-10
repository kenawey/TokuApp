import 'package:flutter/material.dart';

class HomeItem extends StatelessWidget {
  const HomeItem({super.key, required this.txt, required this.color});
  final String txt;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.all(16),
      width: double.infinity,
      alignment: Alignment.centerLeft,
      height: 60,
      padding: EdgeInsets.only(left: 20),
      // color: Color(0xfffa9532),
      color: color,
      child: Text(txt,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          )),
    );
  }
}
