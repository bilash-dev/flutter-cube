import 'dart:math';

import 'package:flutter/material.dart';

class DiceGamePage extends StatefulWidget {
  const DiceGamePage({Key? key}) : super(key: key);

  @override
  State<DiceGamePage> createState() => _DiceGamePageState();
}

class _DiceGamePageState extends State<DiceGamePage> {
    final random = Random.secure();

    int score = 0;
    int highestScore =0;
    final diceList = [
      'pictures/d1.png',
      'pictures/d2.png',
      'pictures/d3.png',
      'pictures/d4.png',
      'pictures/d5.png',
      'pictures/d6.png',
        ];

    int diceSum =0;
    int index1 = 0;
    int index2 = 0;
    bool isGameOver = false;
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DiceGamePage'),
      ),
      body: Column(

        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
         Text('Score: $score', textAlign: TextAlign.center, style: TextStyle(fontSize: 40,),),
          Text('HighestScore: $highestScore', textAlign: TextAlign.center, style: TextStyle(fontSize: 30,),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(diceList[index1], height: 80, width: 80,),
              Image.asset(diceList[index2], height: 80, width: 80,),
            ],
          ),
          Text('DiceSum: $diceSum', style: TextStyle(fontSize: 30),),
          if(isGameOver)Text('Gave Over', style: TextStyle(fontSize: 30),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

              ElevatedButton(
                child: Text('Start'),
                onPressed: _rollTheDice,

              ),
              ElevatedButton(
                child: Text('reset'),
                onPressed: _resetTheDice,

              ),
            ],
          ),
        ],
      ),
    );
  }

  void _rollTheDice(){
    setState(() {
      index1 = random.nextInt(6);
      index2 = random.nextInt(6);
      diceSum = index1 + index2 + 2;
      if (diceSum == 11){
        isGameOver = true;
        if(score > highestScore){
          highestScore = score;
        }

      }else{
        score += diceSum;
      }

      //print(score);

    });

    //print ('index1 = $index1 index2 = $index2');
  }

    void _resetTheDice() {
      setState(() {
        score = 0;
        diceSum =0;
        index1 = 0;
        index2 = 0;
        isGameOver = false;
      });
    }

}

