import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int NoteNumber){
    final player = AudioCache();
    player.play('note$NoteNumber.wav');
  }
  Expanded buildkey(String ,int b){
    return  Expanded(
      child: TextButton(
        onPressed:(){
          playsound(b);
        }, style: TextButton.styleFrom(
         backgroundColor:String,
      ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
             buildkey(Colors.red,1),
             buildkey(Colors.green,2),
             buildkey(Colors.blue,3),
             buildkey(Colors.yellow,4),
             buildkey(Colors.orange,5),
             buildkey(Colors.purple,6),
             buildkey(Colors.blueGrey,7),
             ],
          ),

        ),
      ),
    );
  }
}
