import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../models/element.dart';

class PhraseItem extends StatelessWidget {
  const PhraseItem({super.key, required this.phrase});
  final MyElement phrase;
  @override
  Widget build(BuildContext context) {
    AudioPlayer audioPlayer = AudioPlayer();
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(16),
            height: 100,
            color: const Color(0xff48a5cc),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      phrase.japaniseName,
                      style: const TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Text(phrase.englishName,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 16))
                  ],
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    String sourceSound =
                        "sounds/phrases/${phrase.englishName}.wav";
                    audioPlayer.play(AssetSource(sourceSound));
                  },
                  icon: const Icon(Icons.play_arrow, color: Colors.white),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
