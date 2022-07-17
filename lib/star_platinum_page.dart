import 'package:flutter/material.dart';
// import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:url_launcher/url_launcher.dart';

class StarPlatinumPage extends StatefulWidget {
  StarPlatinumPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _StarPlatinumPageState createState() => _StarPlatinumPageState();
}

class _StarPlatinumPageState extends State<StarPlatinumPage>
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
                    "assets/images/backgrounds/space background.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: ListView(children: [
              GestureDetector(
                  child: RaisedButton(
                      onPressed: () => _audioCache.play('wow29.mp3'),
                      child: Row(children: <Widget>[
                        SizedBox(
                          height: 35,
                          width: 285,
                          child: Text(
                            'Star Platinum',
                            textAlign: TextAlign.right,
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                        SizedBox(
                          height: 35,
                          child: Icon(
                            Icons.star,
                            color: Colors.purple,
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
                onTap: () => _audioCache.play('wow29.mp3'),
                child: AnimatedBuilder(
                  animation: _controller.view,
                  builder: (context, child) {
                    return Transform.scale(
                        scale: _controller.value * 1, child: child);
                  },
                  child: Container(
                    child: Image.asset(
                        'assets/images/stands/star_platinum-removebg.png',
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
                      height: 228,
                      width: 440,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.5),
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
                                'https://jojo.fandom.com/wiki/Star_Platinum')),
                        Text(
                          'Star Platinum (スタープラチナ（星の白金） Sutā Purachina) is the Stand of Jotaro Kujo.JoJo. Among the very first Stands introduced, it is featured along with Jotaro in three parts of the series, most prominently in Stardust Crusaders.\n Star Platinum is a humanoid Stand, resembling a tall, well-built man of similar proportions to Jotaro, if not more muscular. In colored art, its skin is often a hue between purple, blue, green, and small bits of gold. Its face and body have varying colors. It has long, flowing hair with a darker shade above its eyes and on the bridge of its nose, blurring the distinction between its hair and head.\n Star Platinum is a close-range Stand, with a basic reach of only 2 meters from Jotaro\'s body, but with incredible strength, speed, and precision.It is one of the most powerful Stands featured in the series. Its overwhelming physical prowess in every basic characteristic, save for range, coupled with Jotaro\'s own cleverness in combat, allows Jotaro to repeatedly prevail against many Stand users even without the usage of any special ability. In addition, Jotaro\'s discovery of its time-stopping ability only made it all the more formidable in combat. ',
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
                      'assets/images/stat wheel new.png',
                      height: 120,
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
                      ])
                    ]))
                  ],
                ),
              ]),

              //
              //
              //
            ])));

    //
    //
    //
  }
}
