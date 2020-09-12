import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/widgets.dart';
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
 
Widget invoke( Color coller,int x ){
  return Expanded(
    child: new FlatButton(
              child: new Text("Sound$x!"),
              color: coller,
              onPressed:(){
                final player =new AudioCache();              
                player.play("note$x.wav");
                }
   ) ,);
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      showSemanticsDebugger: false,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: new SafeArea(
          child: Container(child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch
        ,
            children: <Widget>[
              invoke(Colors.red , 1 ),
              invoke(Colors.yellow, 2  ),
              invoke(  Colors.orange,3 ),
              invoke(Colors.pink ,4 ),
              invoke( Colors.green,5),
              invoke(Colors.teal,6  ),
              invoke( Colors.blue,7 ),
            ],
          ),),
        )
      
    ));
  }
}
