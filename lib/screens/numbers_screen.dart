import 'package:flutter/material.dart';
import 'package:learnng/models/element.dart';

import '../components/numbers_screen_component.dart';

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
  final List<MyElement> numbers = const [
    MyElement(japaniseName: '1Tsu', englishName: 'one'),
    MyElement(japaniseName: 'Ni', englishName: 'two'),
    MyElement(japaniseName: 'San', englishName: 'three'),
    MyElement(japaniseName: 'Shi', englishName: 'four'),
    MyElement(japaniseName: 'Go', englishName: 'five'),
    MyElement(japaniseName: 'Roku', englishName: 'six'),
    MyElement(japaniseName: 'Sebun', englishName: 'seven'),
    MyElement(japaniseName: 'Hachi', englishName: 'eight'),
    MyElement(japaniseName: 'Kyū', englishName: 'nine'),
    MyElement(japaniseName: 'Jū', englishName: 'ten'),
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
