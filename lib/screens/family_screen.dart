import 'package:flutter/material.dart';
import 'package:learnng/components/family_item.dart';

import '../models/element.dart';

class FamilyScreen extends StatelessWidget {
  const FamilyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<MyElement> items = const [
      MyElement(englishName: 'father', japaniseName: r'父親'),
      MyElement(englishName: 'daughter', japaniseName: '娘'),
      MyElement(englishName: 'grand_father', japaniseName: '祖父'),
      MyElement(englishName: 'mother', japaniseName: '母親'),
      MyElement(englishName: 'son', japaniseName: '息子'),
      MyElement(englishName: 'grand_mother', japaniseName: '祖母'),
      MyElement(englishName: 'older_brother', japaniseName: '兄'),
      MyElement(englishName: 'older_sister', japaniseName: 'Ane'),
      MyElement(englishName: 'younger_brother', japaniseName: 'Otōto'),
      MyElement(englishName: 'younger_sister', japaniseName: 'Imōto'),
    ];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff4a322b),
          title: const Text("Colors "),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) => FamilyItem(member: items[index]),
        ));
  }
}
