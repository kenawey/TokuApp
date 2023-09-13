import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:learnng/models/color.dart';

class ColorsItem extends StatelessWidget {
  const ColorsItem({super.key, required this.color});
  final TokuColor color;
  @override
  Widget build(BuildContext context) {
    AudioPlayer audioPlayer = AudioPlayer();
    return Row(
      children: [
        Container(
            width: 100,
            color: Color(0xfffff6dc),
            child: Image.asset(
              'assets/images/colors/color_${color.englishName}.png',
            )),
        Expanded(
          child: Container(
            padding: EdgeInsets.all(16),
            height: 100,
            color: Color(0xff7e3fa3),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      color.japaniseName,
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Text(color.englishName,
                        style: TextStyle(color: Colors.white, fontSize: 16))
                  ],
                ),
                Spacer(),
                IconButton(
                  onPressed: () {
                    String sourceSound =
                        "sounds/colors/${color.englishName}.wav";
                    audioPlayer.play(AssetSource(sourceSound));
                  },
                  icon: Icon(Icons.play_arrow, color: Colors.white),
                ),
              ],
            ),
          ),
        )
      ],
    );
    ;
  }
}
