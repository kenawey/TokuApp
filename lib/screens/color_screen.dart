import 'package:flutter/material.dart';
import 'package:learnng/components/colors_component.dart';
import 'package:learnng/models/color.dart';

class ColorScreen extends StatelessWidget {
  const ColorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<TokuColor> items = [
      TokuColor(englishName: 'yellow', japaniseName: 'ay haga '),
      TokuColor(englishName: 'yellow', japaniseName: 'ay haga '),
      TokuColor(englishName: 'yellow', japaniseName: 'ay haga '),
      TokuColor(englishName: 'yellow', japaniseName: 'ay haga '),
      TokuColor(englishName: 'yellow', japaniseName: 'ay haga '),
      TokuColor(englishName: 'yellow', japaniseName: 'ay haga '),
      TokuColor(englishName: 'yellow', japaniseName: 'ay haga '),
      TokuColor(englishName: 'yellow', japaniseName: 'ay haga '),
      TokuColor(englishName: 'yellow', japaniseName: 'ay haga '),
      TokuColor(englishName: 'yellow', japaniseName: 'ay haga '),
    ];
    return Scaffold(
        appBar: AppBar(
          title: Text("Colors "),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) => ColorsItem(color: items[index]),
        ));
  }
}
