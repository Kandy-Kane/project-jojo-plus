import 'package:flutter/material.dart';
// import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class TheWorldPage extends StatefulWidget {
  TheWorldPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _TheWorldPageState createState() => _TheWorldPageState();
}

class _TheWorldPageState extends State<TheWorldPage>
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
              image: AssetImage(
                  "assets/images/backgrounds/the world background.jpg"),
              fit: BoxFit.fill,
            ),
          ),
          child: ListView(children: [
            GestureDetector(
                child: RaisedButton(
                    onPressed: () => _audioCache.play('wow42.mp3'),
                    child: Row(children: <Widget>[
                      SizedBox(
                        height: 35,
                        width: 255,
                        child: Text(
                          'The World',
                          textAlign: TextAlign.right,
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                      SizedBox(
                        height: 35,
                        child: Icon(MdiIcons.timelapse,
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
              onTap: () => _audioCache.play('wow42.mp3'),
              child: AnimatedBuilder(
                animation: _controller.view,
                builder: (context, child) {
                  return Transform.scale(
                      scale: _controller.value * 1, child: child);
                },
                child: Container(
                  child: Image.asset(
                      'assets/images/stands/the_world_2-removebg-preview.png',
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
                              launch('https://jojo.fandom.com/wiki/The_World')),
                      Text(
                        'The World (ザ・ワールド（世界） Za Wārudo) is the Stand of DIO, featured in Stardust Crusaders.\nA humanoid Stand, The World is tall and has a very muscular build. It bears a striking resemblance to DIO in terms of appearance. It wears a headpiece covering its face to below the place of its nose, slanting at a steep angle from the base of its forehead to a peak situated above the rear of its head by about half its height, leaving the face of an inverted triangle visible to the front; somewhat similar to the Red Crown of Lower Egypt.\nThe World is an exceptionally powerful Close-range Stand much like Star Platinum as noted by Noriaki Kakyoin and Jotaro Kujo, but boasting an effective manifestation range of approximately 10 meters.[4] Despite requiring a close distance to inflict damage, its overwhelming physical might and near unstoppable control over time undeniably make it one of the most dangerous Stands in the entire series.',
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
                    'assets/images/stat wheels/the world stat.png',
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
                    ])
                  ]))
                ],
              ),
            ]),
          ]),
        ));
  }
}
