import 'dart:math';

import 'package:flutter/material.dart';

class DiceGamePage extends StatefulWidget {
  const DiceGamePage({Key? key}) : super(key: key);

  @override
  State<DiceGamePage> createState() => _DiceGamePageState();
}

class _DiceGamePageState extends State<DiceGamePage> {
    final random = Random.secure();
    int index1 = 0;
    int index2 = 0;
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DiceGamePage'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset('pictures/d1.png', height: 80, width: 80,),
              Image.asset('pictures/d2.png', height: 80, width: 80,),
            ],
          ),
          ElevatedButton(
            child: Text('Start'),
            onPressed: () {
              index1 = random.nextInt(6);
              index2 = random.nextInt(6);

            },
          ),
        ],
      ),
    );
  }
}

