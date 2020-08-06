import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:va_player/audio.dart';
import 'package:va_player/video.dart';
import 'package:va_player/widget.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        title: appBar(context),
        backgroundColorStart: Colors.brown,
        backgroundColorEnd: Colors.brown,
        elevation: 0.0,
        brightness: Brightness.light,
      ),
      body:
      Center(
        child: Container(
          margin: EdgeInsets.all(0),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30.0),
              bottomRight: Radius.circular(30.0),
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
                Colors.black,
                Colors.black,
                Colors.black,
                Colors.black,
              ],
            ),
          ),
          child: Column(
            children: <Widget>[
                Container(
                   margin: EdgeInsets.only(top: 40, bottom: 20),
                   width: 100,
                   height: 100,
                   decoration: BoxDecoration(
                     shape: BoxShape.circle,
                     image: DecorationImage(
                       image: AssetImage('assets/Audio2.jpg'),
                       //NetworkImage('https://images.unsplash.com/photo-1585298723682-7115561c51b7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1900&q=80'),
                       //image: ExactAssetImage('images/Audio.jpg'),
                       fit: BoxFit.cover,
                       ),
                       border: Border.all(
                         color: Colors.black,
                         width: 5.0,
                       ),
                       boxShadow: [
                         BoxShadow(
                           color: Colors.black87,
                           offset: Offset(20.0,20.0),
                         blurRadius:20.0,
                         )
                       ]
                   ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyAudio()),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 18),
                      decoration: BoxDecoration(
                        border: Border.all(
                           color: Colors.black,
                           width: 3.0,
                         ),
                        color: Colors.amber, borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                         BoxShadow(
                           color: Colors.black87,
                           offset: Offset(20.0,20.0),
                         blurRadius:20.0,
                         )
                       ]
                       ),
                        alignment: Alignment.center,
                        width:  MediaQuery.of(context).size.width - 88,
                        child: Text("Audio",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          ),
                  ),
                  Container(
                   margin: EdgeInsets.only(top: 40, bottom: 20),
                   width: 100,
                   height: 100,
                   decoration: BoxDecoration(
                     shape: BoxShape.circle,
                     image: DecorationImage(
                       image: AssetImage('assets/Video.jpg'),
                       //NetworkImage('https://images.unsplash.com/photo-1478720568477-152d9b164e26?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80'),
                       //image: ExactAssetImage('images/Audio.jpg'),
                       fit: BoxFit.cover,
                       ),
                       border: Border.all(
                         color: Colors.black,
                         width: 5.0,
                       ),
                       boxShadow: [
                         BoxShadow(
                           color: Colors.black87,
                           offset: Offset(20.0,20.0),
                         blurRadius:20.0,
                         )
                       ]
                   ),
                                   
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyVideo()),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 18),
                      decoration: BoxDecoration(
                        border: Border.all(
                           color: Colors.black,
                           width: 3.0,
                         ),
                        color: Colors.amber, borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                         BoxShadow(
                           color: Colors.black87,
                           offset: Offset(20.0,20.0),
                         blurRadius:20.0,
                         )
                       ]
                        ),
                        alignment: Alignment.center,
                        width:  MediaQuery.of(context).size.width - 40,
                        child: 
                        Text("Video",
                          style: TextStyle(color: Colors.white, fontSize: 16),
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
