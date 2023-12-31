import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../models/element.dart';

class FamilyItem extends StatelessWidget {
  const FamilyItem({super.key, required this.member});
  final MyElement member;
  @override
  Widget build(BuildContext context) {
    AudioPlayer audioPlayer = AudioPlayer();
    return Row(
      children: [
        Container(
            width: 100,
            color: const Color(0xff538033),
            child: Image.asset(
              'assets/images/family_members/family_${member.englishName}.png',
            )),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(16),
            height: 100,
            color: const Color(0xff538033),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      member.japaniseName,
                      style: const TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Text(member.englishName,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 16))
                  ],
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    String sourceSound =
                        "sounds/family_members/${member.englishName}.wav";
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
