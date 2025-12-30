import 'dart:math';
import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';



void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatefulWidget {


  @override
  State<XylophoneApp> createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
List<String>letter=['A','B','C','D','E','F','G'];

String randomletter="A";

void generateRandomletter(){
setState((){
    randomletter=letter[Random().nextInt(letter.length)];
});
}

// }
  void song(String letter) {
    if (letter == randomletter) {
      AssetsAudioPlayer.newPlayer().open(
        Audio("assets/audio/$letter.wav"),);
      generateRandomletter();
    }
  }

  Widget buildmyapp(
      {required String letter, required double width, required Color color}) {
    return GestureDetector(
      onTap: () {
        song(letter);
      },
      child: Container(
        height: 70,
        width: width,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(12)
        ),
        child: Center(
          child: Text(letter,
            style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold

            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey,
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 20,),
              Text(randomletter,style: TextStyle(fontSize: 70,color: Colors.white,fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              buildmyapp(letter:"A", width:300 , color: Colors.pink),
            SizedBox(height: 20,),
            buildmyapp(letter: "B", width: 250, color: Colors.orange),
            SizedBox(height: 20,),
            buildmyapp(letter: "C", width: 200, color: Colors.green),
            SizedBox(height: 20,),
            buildmyapp(letter: "D", width: 170, color: Colors.blueAccent),
            SizedBox(height: 20,),
           buildmyapp(letter: "E", width: 150, color: Colors.yellow),
            SizedBox(height: 20,),
           buildmyapp(letter: "F", width: 130, color: Colors.red),
            SizedBox(height: 20,),
           buildmyapp(letter: "G", width: 110, color: Colors.teal),
            ],
          ),
        ),
      ),
    );
  }
}
