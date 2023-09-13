import 'package:flutter/material.dart';

import '../components/numbers_screen_component.dart';
import '../models/numbers.dart';

class NumbersScreen extends StatelessWidget {
  const NumbersScreen({
    super.key,
  });
/*
  String? number;
  String? englishNumber;
  Widget numberItem({
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
  final List<Number> numbers = const [
    Number(japaniseName: '1Tsu', englishName: 'one'),
    Number(japaniseName: 'Ni', englishName: 'two'),
    Number(japaniseName: 'San', englishName: 'three'),
    Number(japaniseName: 'Shi', englishName: 'four'),
    Number(japaniseName: 'Go', englishName: 'five'),
    Number(japaniseName: 'Roku', englishName: 'six'),
    Number(japaniseName: 'Sebun', englishName: 'seven'),
    Number(japaniseName: 'Hachi', englishName: 'eight'),
    Number(japaniseName: 'Kyū', englishName: 'nine'),
    Number(japaniseName: 'Jū', englishName: 'ten'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff4a322b),
        title: Text("Numbers"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => NumberItem(number: numbers[index]),
        itemCount: numbers.length,
      ),

      /*(
        children: [
          NumberItem(number: numbers.first),
          NumberItem(number: numbers[1]),
          NumberItem(number: numbers[2]),
          NumberItem(number: numbers[3]),
          NumberItem(number: numbers[4]),
          NumberItem(number: numbers[5]),
          NumberItem(number: numbers[6]),
          NumberItem(number: numbers[7]),
          NumberItem(number: numbers[8]),
          NumberItem(number: numbers.last),
        ],
      ),*/
    );
  }
}
