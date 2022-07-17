import 'package:flutter/material.dart';
// import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class StrengthPage extends StatefulWidget {
  StrengthPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _StrengthPageState createState() => _StrengthPageState();
}

class _StrengthPageState extends State<StrengthPage>
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
              image: AssetImage("assets/images/stands/strength.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView(children: [
            GestureDetector(
                child: RaisedButton(
                    onPressed: () => _audioCache.play('ship horn.mp3'),
                    child: Row(children: <Widget>[
                      SizedBox(
                        height: 35,
                        width: 250,
                        child: Text(
                          'Strength',
                          textAlign: TextAlign.right,
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                      SizedBox(
                        height: 35,
                        child: Icon(MdiIcons.shipWheel,
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
              onTap: () => _audioCache.play('ship horn.mp3'),
              child: AnimatedBuilder(
                animation: _controller.view,
                builder: (context, child) {
                  return Transform.scale(
                      scale: _controller.value * 1, child: child);
                },
                child: Container(
                  child: Image.asset(
                      'assets/images/stands/strength-removebg-preview.png',
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
                          onTap: () => launch(
                              'https://jojo.fandom.com/wiki/Silver_Chariot')),
                      Text(
                        'Strength (ストレングス（力） Sutorengusu) is the Stand of Forever, featured in Stardust Crusaders.\nInspired by the famous merchant brigantine, Mary CelesteW,[1] Strength is a Stand bound to a small yacht, which is then transformed into a gigantic derelict freighter named "Big Daddy".[2] As a massive ocean liner, it is the largest Stand ever seen.\nDisguised as a freighter, Strength is a very powerful Stand bound to take its enemies by surprise and it almost killed the entirety of the Joestar Group at once. However, it is burdened by the cockiness of its user, Forever, who likes to brag and thus expose himself to retaliation. Strength is capable of binding itself to a small boat and transforming it into a gigantic freighter.',
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
                    'assets/images/stat wheels/strength stat.png',
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
                          'A',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Container(
                        color: Colors.grey,
                        height: 20,
                        width: 80,
                        child: Text(
                          'E',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Container(
                        color: Colors.grey,
                        height: 20,
                        width: 80,
                        child: Text(
                          'E',
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
