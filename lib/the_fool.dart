import 'package:flutter/material.dart';
// import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class TheFoolPage extends StatefulWidget {
  TheFoolPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _TheFoolPageState createState() => _TheFoolPageState();
}

class _TheFoolPageState extends State<TheFoolPage>
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
    return Scaffold(
        backgroundColor: Colors.grey[800],
        appBar: AppBar(),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image:
                  AssetImage("assets/images/backgrounds/sand background.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView(children: [
            GestureDetector(
                child: RaisedButton(
                    onPressed: () => _audioCache.play('igg.mp3'),
                    child: Row(children: <Widget>[
                      SizedBox(
                        height: 35,
                        width: 255,
                        child: Text(
                          'The Fool',
                          textAlign: TextAlign.right,
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                      SizedBox(
                        height: 35,
                        child: Icon(MdiIcons.dominoMask,
                            color: Colors.blueGrey[700]),
                      ),
                    ]))),
            Stack(
              children: <Widget>[
                new Positioned(
                    child: Icon(Icons.volume_up, color: Colors.white54))
              ],
            ),
            GestureDetector(
              onTap: () => _audioCache.play('igg.mp3'),
              child: AnimatedBuilder(
                animation: _controller.view,
                builder: (context, child) {
                  return Transform.scale(
                      scale: _controller.value * 1, child: child);
                },
                child: Container(
                  child: Image.asset(
                      'assets/images/stands/the_fool-removebg-preview.png',
                      height: 300,
                      width: 200),
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
                    height: 223,
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
                          onTap: () =>
                              launch('https://jojo.fandom.com/wiki/The_Fool')),
                      Text(
                        'The Fool (ザ・フール（愚者） Za Fūru) is the Stand of Iggy, featured in Stardust Crusaders.\nThe Fool does not have an actual psychic manifestation (i.e. it is not normally visible), but instead takes its form by manipulating sand and dust particles in the environment (and as such, it is one of the few Stands truly visible to everyone, not only to Stand users). It is, for all intents and purposes, simply bound to sand, being a construct of sand and dirt. However, because it is controlled by Iggy, it can take on several different forms, depending on what Iggy wants.As a Stand with a basic-but-versatile power, The Fool is described as the epitome of "the simplest way is the best way"\nSand Manifestation \nThe Fool manifests itself as a pile of sand that Iggy The fool powa The Fool is a Stand of sand manipulates. Despite this nature, The Fool is remarkably powerful. Much like Muhammad Avdol\'s Magician\'s Red, Iggy is free to manipulate the sand as he sees fit and the sand doesn\'t behave like normal sand, being immune to being soaked for instance or changing density to trap an object inside it..',
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
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(5)),
                  child: Image.asset(
                    'assets/images/stat wheels/the fool stat.png',
                    fit: BoxFit.cover,
                  )),
              Column(
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
                ],
              ),
            ]),
          ]),
        ));
  }
}
