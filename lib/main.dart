import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_work/dice_game_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      home: DiceGamePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dashboard'),),

      body: Center(
          child: Column(
            //mainAxisSize: MainAxisSize.min,
            children: [
              //SizedBox (height: 50,),
              imageSection(),
              BodyTextSection(),
              buttonSection(),
          ],
          )
      ),
    );
  }

  Image imageSection() {
    return Image.network(
              'https://cdn.shopify.com/s/files/1/0020/4433/0057/articles/ethernet-cables_1080x.jpeg?v=1554907922',
              fit: BoxFit.cover,
              height: 200,
              width: double.maxFinite,
            );
  }

  Row buttonSection() {
    return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton (
                  child: Text("Press"),
                    onPressed: () {

                    },
                  ),
                SizedBox (width: 20, height: 100,),
                  ElevatedButton (
                    child: Text("Press"),
                    onPressed: () {
                    },
                  ),
              ],
            );
  }

  Column BodyTextSection() {
    return Column(
              children: [
                Text(
                  'Hellow World',
                  textDirection: TextDirection.ltr,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,),
                ),
                Text(
                  'Hellow World',
                  textDirection: TextDirection.ltr,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40,),
                ),
                Text(
                  'Hellow World',
                  textDirection: TextDirection.ltr,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 50,),
                ),
              ],
            );
  }
}