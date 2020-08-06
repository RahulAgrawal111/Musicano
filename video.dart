import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:iqplayer/iqplayer.dart';

class MyVideo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Video Player'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        title: Text("Video Player"),
        backgroundColorStart: Colors.teal,
        backgroundColorEnd: Colors.brown,
        elevation: 0.0,
        brightness: Brightness.light,
      ),
      body: Center(
        child: Container(
          alignment: Alignment.topCenter,
          height: double.infinity,
          width: double.infinity,
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
                  0.2,
                  0.3,
                  0.9,
                ],
                colors: [
                  Colors.teal,
                  Colors.teal,
                  Colors.teal,
                  Colors.teal,
                ],
              ),
            ),
          child: Column(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => IQScreen(
                          title: title,
                          description: 'Online Video',
                          videoPlayerController: VideoPlayerController.network(
                            'https://d11b76aq44vj33.cloudfront.net/media/720/video/5def7824adbbc.mp4',
                          ),
                          iqTheme: IQTheme(
                            loadingProgress: SpinKitCircle(
                              color: Colors.blue,
                            ),
                            playButtonColor: Colors.transparent,
                            videoPlayedColor: Colors.indigo,
                            playButton: (BuildContext context, bool isPlay,
                                AnimationController animationController) {
                              if (isPlay)
                                return Icon(
                                  Icons.pause_circle_filled,
                                  color: Colors.blue,
                                  size: 50,
                                );
                              return Icon(
                                Icons.play_circle_outline,
                                color: Colors.blue,
                                size: 50,
                              );
                            },
                          ),
                        ),
                      ),
                    );
                },
                  child: Container(
                   margin: EdgeInsets.only(top: 50, bottom: 50),
                   
                   height: 150,
                   padding: EdgeInsets.symmetric(vertical: 18),
                          decoration: BoxDecoration(
                            border: Border.all(
                               color: Colors.black,
                               width: 3.0,
                             ),
                            color: Colors.teal, borderRadius: BorderRadius.circular(0),
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
                            child: Text("Online Video",
                              style: TextStyle(color: Colors.black, fontSize: 16),
                              ),
                              ),
              ),
                             
              GestureDetector(
                onTap: (){
                  Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => IQScreen(
                            title: title,
                            description: 'Assets Video',
                            videoPlayerController: VideoPlayerController.asset(
                              'assets/videos/Intro.mp4',
                            ),
                            iqTheme: IQTheme(
                              loadingProgress: SpinKitCircle(
                                color: Colors.red,
                              ),
                              playButtonColor: Colors.transparent,
                              videoPlayedColor: Colors.indigo,
                              playButton: (BuildContext context, bool isPlay,
                                  AnimationController animationController) {
                                if (isPlay)
                                  return Icon(
                                    Icons.pause_circle_filled,
                                    color: Colors.blue,
                                    size: 50,
                                  );
                                return Icon(
                                  Icons.play_circle_outline,
                                  color: Colors.blue,
                                  size: 50,
                                );
                              },
                            ),
                          ),
                        ),
                      );

                },
                            child: Container(
                              margin: EdgeInsets.only(top: 50, bottom: 40),
                   
                   height: 100,
                  padding: EdgeInsets.symmetric(vertical: 18),
                          decoration: BoxDecoration(
                            border: Border.all(
                               color: Colors.black,
                               width: 3.0,
                             ),
                            color: Colors.indigo, borderRadius: BorderRadius.circular(30),
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
                            child: Text("Asset Video",
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