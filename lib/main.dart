import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';


void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void song(String Letter){
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/audio/$Letter.wav"),
    );

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: mycolor,
body: Center(
  child: Column(
    children: [
      Container(
        height: 70,
        width: 300,
        decoration: BoxDecoration(
          color: Colors.cyan,
          borderRadius: BorderRadius.circular(12)
        ),
        child: GestureDetector(
          onTap: (){
            song("A");
          },
          child: Center(
            child: Text("A ",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold

            ),
            ),
          ),
        ),
      ),
      SizedBox(height: 20,),
      Container(
        height: 70,
        width: 250,
        decoration: BoxDecoration(
          color: Colors.purple,
          borderRadius: BorderRadius.circular(12)
        ),
        child: GestureDetector(
          onTap: (){
            song("B");
          },
          child: Center(
            child: Text("B",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold

            ),
            ),
          ),
        ),
      ),
      SizedBox(height: 20,),
      Container(
        height: 70,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.deepOrange,
          borderRadius: BorderRadius.circular(12)
        ),
        child: GestureDetector(
          onTap: (){
            song("C");
          },
          child: Center(
            child: Text("C",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold

            ),
            ),
          ),
        ),
      ),
      SizedBox(height: 20,),
      Container(
        height: 70,
        width: 170,
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(12)
        ),
        child: GestureDetector(
          onTap: (){
            song("D");
          },
          child: Center(
            child: Text("D",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold

            ),
            ),
          ),
        ),
      ),
      SizedBox(height: 20,),
      Container(
        height: 70,
        width: 150,
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(12)
        ),
        child: GestureDetector(
          onTap: (){
            song("E");
          },
          child: Center(
            child: Text("E",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold

            ),
            ),
          ),
        ),
      ),
      SizedBox(height: 20,),
      Container(
        height: 70,
        width: 120,
        decoration: BoxDecoration(
          color: Colors.brown,
          borderRadius: BorderRadius.circular(12)
        ),
        child: GestureDetector(
          onTap: (){
            song("F");
          },
          child: Center(
            child: Text("F",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold

            ),
            ),
          ),
        ),
      ),
      SizedBox(height: 20,),
      Container(
        height: 70,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(12)
        ),
        child: GestureDetector(
          onTap: (){
            song("G");
          },
          child: Center(
            child: Text("G",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold

            ),
            ),
          ),
        ),
      ),
    ],
  ),
),
      ),
    );
  }
}

