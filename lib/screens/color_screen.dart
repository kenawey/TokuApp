import 'package:flutter/material.dart';
import 'package:learnng/components/colors_component.dart';
import 'package:learnng/models/element.dart';

class ColorScreen extends StatelessWidget {
  const ColorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<MyElement> items = const [
      MyElement(englishName: 'yellow', japaniseName: 'ay haga '),
      MyElement(englishName: 'white', japaniseName: 'ay haga '),
      MyElement(englishName: 'red', japaniseName: 'ay haga '),
      MyElement(englishName: 'green', japaniseName: 'ay haga '),
      MyElement(englishName: 'gray', japaniseName: 'ay haga '),
      MyElement(englishName: 'dusty', japaniseName: 'ay haga '),
      MyElement(englishName: 'brown', japaniseName: 'ay haga '),
      MyElement(englishName: 'black', japaniseName: 'ay haga '),
    ];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff4a322b),
          title: Text("Colors "),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) => ColorsItem(color: items[index]),
        ));
  }
}
