import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

import 'package:audioplayers/audioplayers.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';


var play=false;

AudioPlayer advPlayer= new AudioPlayer();

AudioCache audioCache= new AudioCache(fixedPlayer:advPlayer);

var audio='';


class MyAudio extends StatefulWidget {
  @override
  _MyAudioState createState() => _MyAudioState();
}

class _MyAudioState extends State<MyAudio> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: GradientAppBar(
        title: Text("Audio Player"),
        backgroundColorStart: Colors.amber,
        backgroundColorEnd: Colors.amber,
        elevation: 0.0,
        brightness: Brightness.light,
      ),
      body:Container(
        margin: EdgeInsets.all(0),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            ),
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [
                0.1,
                0.4,
                0.6,
                0.9,
              ],
              colors: [
                Colors.yellow,
                Colors.yellow,
                Colors.yellow,
                Colors.yellow,
              ],
            ),
          ),
    
    child:Column(
      //mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
             color: Colors.blue,
            border: Border.all(
                         color: Colors.white,
                         width: 5.0,
                       ),
                       boxShadow: [
                         BoxShadow(
                           color: Colors.transparent,
                           offset: Offset(20.0,20.0),
                         blurRadius:20.0,
                         )
                       ]
          ),
          margin: EdgeInsets.all(0),
          child: Row(                                                      
            children: <Widget>[
              Image.asset(                                            
                'assets/Audio2.jpg',
                height:50,
                
              ),
              SizedBox(                                  
                width:40,
                height:40,
                child:FlatButton(                 
                  onPressed: (){
                    if(play==true){
                      advPlayer.stop();
                    }
                    audio='audios/Kul.mp3';
                    audioCache.play(audio);
                    play=true;
                  },
                  child:Icon(
                    Icons.music_video,
                    color:Colors.black,
                    size:30,
                  ), 
                ),
              ),
              Text(                                                         
                'Audio1 From Asset',
                textAlign: TextAlign.center,
                style:TextStyle(
                  backgroundColor: Colors.transparent,
                  fontWeight: FontWeight.bold,
                  color:Colors.black,
                ),
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
             color: Colors.cyan,
            border: Border.all(
                         color: Colors.white,
                         width: 5.0,
                       ),
                       boxShadow: [
                         BoxShadow(
                           color: Colors.transparent,
                           offset: Offset(20.0,20.0),
                         blurRadius:20.0,
                         )
                       ]
          ),
          margin: EdgeInsets.all(10),
          child: Row(                                                      
            children: <Widget>[
              Image.asset(                                            
                'assets/Audio2.jpg',
                height:50,
              ),
              SizedBox(                                  
                width:50,
                height:50,
                child:FlatButton(
                  onPressed: (){
                    if(play==true){
                      advPlayer.stop();
                    }
                    audio='audios/Na.mp3';
                    audioCache.play(audio);
                    play=true;
                  },
                  child:Icon(
                    Icons.music_video,
                    color:Colors.black,
                    size:30,
                  ), 
                ),
              ),
              Text(                                                         
                'Audio2 from asset',
                textAlign: TextAlign.center,
                style:TextStyle(
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.transparent,
                  color:Colors.black,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 450,),                                             
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            SizedBox(                                                    
                  width:80,
                  height:80,
                  child:FlatButton(
                    onPressed: (){
                      play=false;
                        advPlayer.pause();
                    },
                    child:Icon(
                      Icons.pause,
                      color:Colors.black,
                      size: 50,
                    ), 
                  ),
                ),
            SizedBox(                                            
                  width:40,
                  height:40,
                  child:FlatButton(
                    onPressed: (){
                      audioCache.play(audio);
                      play=true;
                    },
                    child:Icon(
                      Icons.play_arrow,
                      color:Colors.black,
                      size:50,
                    ), 
                  ),
                ),
            SizedBox(                                                     
                  width:80,
                  height:80,
                  child:FlatButton(
                    onPressed: (){
                      play=false;
                      advPlayer.stop();
                    },
                    child:Icon(
                      Icons.stop,
                      color:Colors.black,
                      size: 50,
                    ), 
                  ),
                ),
          ],
        ),
      ],
   ),

  ),
      )
      
    );
  }
}



