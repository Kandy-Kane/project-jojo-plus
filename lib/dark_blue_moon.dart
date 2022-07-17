import 'package:flutter/material.dart';
// import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class DarkBlueMoonPage extends StatefulWidget {
  DarkBlueMoonPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _DarkBlueMoonPageState createState() => _DarkBlueMoonPageState();
}

class _DarkBlueMoonPageState extends State<DarkBlueMoonPage>
    with SingleTickerProviderStateMixin {
  AudioCache _audioCache = new AudioCache();
  AudioPlayer audioPlayer = new AudioPlayer();

  AnimationController _controller = AnimationController();
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
              image: AssetImage(
                  "assets/images/backgrounds/under water background.jpg"),
              fit: BoxFit.fill,
            ),
          ),
          child: ListView(children: [
            GestureDetector(
                child: RaisedButton(
                    onPressed: () => _audioCache.play('water droplit.mp3'),
                    child: Row(children: <Widget>[
                      SizedBox(
                        height: 35,
                        width: 285,
                        child: Text(
                          'Dark Blue Moon',
                          textAlign: TextAlign.right,
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                      SizedBox(
                        height: 35,
                        child: Icon(MdiIcons.water, color: Colors.blue[700]),
                      ),
                    ]))),
            Stack(
              children: <Widget>[
                new Positioned(
                    child: Icon(Icons.volume_up, color: Colors.white54))
              ],
            ),
            GestureDetector(
              onTap: () => _audioCache.play('water droplit.mp3'),
              child: AnimatedBuilder(
                animation: _controller.view,
                builder: (context, child) {
                  return Transform.scale(
                      scale: _controller.value * 1, child: child);
                },
                child: Container(
                  child: Image.asset(
                      'assets/images/stands/dark_blue_moon_2-removebg-preview.png',
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
                              'https://jojo.fandom.com/wiki/Dark_Blue_Moon')),
                      Text(
                        'Dark Blue Moon (ダークブルームーン（暗青の月） Dāku Burū Mūn) is the Stand of Impostor Captain Tennille, featured in Stardust Crusaders.\nDark Blue Moon is a humanoid Stand with aquatic features. It manifests itself as some sort of merfolk-like entity with a flat head, four eyes, a large dorsal fin lining most of its back, additional fins on its legs, and webbed hands and feet.\nDark Blue Moon is a marine Stand, and, as such, its skills are more effective in an aquatic environment. It is probably less effective in a terrestrial environment, but this is unknown.[1]',
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
                    'assets/images/stat wheels/dark blue moon stat.png',
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
            ]),
          ]),
        ));
  }
}
