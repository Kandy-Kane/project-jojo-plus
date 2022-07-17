import 'package:flutter/material.dart';
// import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MagiciansRedPage extends StatefulWidget {
  MagiciansRedPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MagiciansRedPageState createState() => _MagiciansRedPageState();
}

class _MagiciansRedPageState extends State<MagiciansRedPage>
    with SingleTickerProviderStateMixin {
  AudioCache _audioCache;
  AudioPlayer audioPlayer;

  AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this,
        duration: Duration(
          milliseconds: 500,
        ));

    _controller.forward();

    _audioCache = AudioCache(
        prefix: "sounds/",
        fixedPlayer: AudioPlayer()..setReleaseMode(ReleaseMode.STOP));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    AlignmentDirectional _standAlignment = AlignmentDirectional(0.0, 2.0);

    return Scaffold(
        backgroundColor: Colors.grey[800],
        appBar: AppBar(),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image:
                  AssetImage("assets/images/backgrounds/fire background.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView(children: [
            GestureDetector(
                child: RaisedButton(
                    onPressed: () => _audioCache.play('wow40.mp3'),
                    child: Row(children: <Widget>[
                      SizedBox(
                        height: 35,
                        width: 285,
                        child: Text(
                          ' Magicians Red',
                          textAlign: TextAlign.right,
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                      SizedBox(
                        height: 35,
                        width: 20,
                        child: Icon(
                          MdiIcons.fire,
                          color: Colors.red,
                        ),
                      ),
                    ]))),
            Stack(
              children: <Widget>[
                new Positioned(
                    child: Icon(Icons.volume_up, color: Colors.white54))
              ],
            ),
            GestureDetector(
              onTap: () => _audioCache.play('wow40.mp3'),
              child: AnimatedBuilder(
                animation: _controller.view,
                builder: (context, child) {
                  return Transform.scale(
                      scale: _controller.value * 1, child: child);
                },
                child: Container(
                  child: Image.asset(
                      'assets/images/stands/magicians_red-removebg.png',
                      height: 300,
                      width: 300),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                //color: Colors.grey.withOpacity(0.5),
                border: Border(
                  top: BorderSide(width: 3.0, color: Color(0xFFFF000000)),
                ),
              ),
              child: Column(children: <Widget>[
                Container(
                    margin: EdgeInsets.only(bottom: 5),
                    height: 230,
                    width: 440,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.9),
                        borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(5.0),
                            topRight: const Radius.circular(5.0),
                            bottomLeft: const Radius.circular(10.0),
                            bottomRight: const Radius.circular(10.0))),
                    child: ListView(children: <Widget>[
                      InkWell(
                          child: Container(
                              height: 30,
                              width: 100,
                              child: Text(
                                "Open Wiki",
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.red[300],
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline,
                                ),
                              )),
                          onTap: () => launch(
                              'https://jojo.fandom.com/wiki/Magician%27s_Red')),
                      Text(
                        'Magician\'s Red (マジシャンズレッド（魔術師の赤） Majishanzu Reddo) is the Stand of Muhammad Avdol, featured in Stardust Crusaders. \n Magician\'s Red appears as a humanoid figure with a bird-like head. It has a heavily muscular upper body and its feathered legs are sometimes covered in burning flames. Its arms have claws instead of nails and it wears dark bracelets on both of its wrists. Originally, the Stand was barefooted, but during Avdol\'s return, it wore Arabian shoes.\nMagician\'s Red is a powerful Stand with an advantage in range thanks to its ability to manipulate fire. Moreover, Magician\'s Red is still a physically powerful Stand, a single kick of his being able to shatter Judgement\'s armor, whereas Silver Chariot couldn\'t.[2] Avdol prefers open spaces in order to use said power more fully.',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ])),
              ]),
            ),
            Row(children: [
              Container(
                  height: 122,
                  width: 187,
                  //decoration:BoxDecoration(borderRadius: BorderRadius.circular(100)),

                  child: Image.asset(
                    'assets/images/stat wheels/magicians red stat.png',
                    fit: BoxFit.cover,
                    width: 200,
                    height: 230,
                  )),
              Container(
                child: Column(
                  children: [
                    Container(
                        child: Column(children: <Widget>[
                      Container(
                        height: 41,
                        child: Column(
                          children: <Widget>[
                            Row(children: <Widget>[
                              Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  color: Colors.green[300],
                                  height: 40,
                                  width: 80,
                                  child: Text(
                                    'Destructive Power',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                color: Colors.green[300],
                                height: 40,
                                width: 80,
                                child: Text(
                                  'Speed',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              Container(
                                color: Colors.green[300],
                                height: 40,
                                width: 80,
                                child: Text(
                                  'Range',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ]),
                          ],
                        ),
                      ),

                      //
                      //
                      //

                      Container(
                          child: Column(children: [
                        Row(children: <Widget>[
                          Container(
                            color: Colors.grey,
                            height: 20,
                            width: 80,
                            child: Text(
                              'B',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Container(
                            color: Colors.grey,
                            height: 20,
                            width: 80,
                            child: Text(
                              'B',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Container(
                            color: Colors.grey,
                            height: 20,
                            width: 80,
                            child: Text(
                              'C',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ])
                      ]))
                    ])),

                    Container(
                      height: 41,
                      child: Column(
                        children: <Widget>[
                          Row(children: <Widget>[
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                color: Colors.green[300],
                                height: 40,
                                width: 80,
                                child: Text(
                                  'Persistence',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              color: Colors.green[300],
                              height: 40,
                              width: 80,
                              child: Text(
                                'Precision',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Container(
                              color: Colors.green[300],
                              height: 40,
                              width: 80,
                              child: Text(
                                'Potential',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            //
                            //
                            //
                          ]),
                        ],
                      ),
                    ),

                    //
                    //
                    //
                    Container(
                        child: Column(children: [
                      Row(children: <Widget>[
                        Container(
                          color: Colors.grey,
                          height: 20,
                          width: 80,
                          child: Text(
                            'B',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Container(
                          color: Colors.grey,
                          height: 20,
                          width: 80,
                          child: Text(
                            'C',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Container(
                          color: Colors.grey,
                          height: 20,
                          width: 80,
                          child: Text(
                            'D',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ])
                    ]))
                  ],
                ),
              )
            ]),
          ]),
        ));
  }
}
