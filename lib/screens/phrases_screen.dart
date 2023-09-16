import 'package:flutter/material.dart';
import 'package:learnng/components/phrase_component.dart';

import '../models/element.dart';

class PhrasesScreen extends StatelessWidget {
  const PhrasesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<MyElement> items = const [
      MyElement(englishName: 'are_you_coming', japaniseName: r'父親'),
      MyElement(englishName: 'dont_forget_to_subscribe', japaniseName: '娘'),
      MyElement(englishName: 'how_are_you_feeling', japaniseName: '祖父'),
      MyElement(englishName: 'i_love_anime', japaniseName: '母親'),
      MyElement(englishName: 'i_love_programming', japaniseName: '息子'),
      MyElement(englishName: 'programming_is_easy', japaniseName: '祖母'),
      MyElement(englishName: 'what_is_your_name', japaniseName: '兄'),
      MyElement(englishName: 'where_are_you_going', japaniseName: 'Ane'),
      MyElement(englishName: 'yes_im_coming', japaniseName: 'Otōto'),
    ];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff4a322b),
          title: Text("Colors "),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) => PhraseItem(phrase: items[index]),
        ));
  }
}
