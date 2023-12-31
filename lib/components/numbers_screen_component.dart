import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:learnng/models/element.dart';

class NumberItem extends StatelessWidget {
  NumberItem({
    super.key,
    required this.number,
  });
  final MyElement number;

  AudioPlayer audioPlayer = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 100,
          color: Color(0xfffff6dc),
          child: Image.asset(
              'assets/images/numbers/number_${number.englishName}.png'),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.all(16),
            height: 100,
            color: Colors.orange,
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      number.japaniseName,
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Text(number.englishName,
                        style: TextStyle(color: Colors.white, fontSize: 16))
                  ],
                ),
                Spacer(),
                IconButton(
                  onPressed: () {
                    String sourceSound =
                        "sounds/numbers/number_${number.englishName}_sound.mp3";
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
  }

  /*Widget numberItem({
    required String n,
    required String englishhN,
  }) {
    return Row(
      children: [
        Container(
          width: 100,
          color: Color(0xfffff6dc),
          child:
              Image.asset('assets/images/numbers/number_' + englishhN + '.png'),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.all(16),
            height: 100,
            color: Colors.orange,
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      n,
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Text(englishhN,
                        style: TextStyle(color: Colors.white, fontSize: 16))
                  ],
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.play_arrow, color: Colors.white),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
*/
}
