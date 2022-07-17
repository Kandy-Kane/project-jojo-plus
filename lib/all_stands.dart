import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:stands3/sounds.dart';
// import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:stands3/star_platinum_page.dart';
import 'package:stands3/hierophant_green.dart';
import 'package:stands3/magicians_red.dart';
import 'package:stands3/hermit_purple.dart';
import 'package:stands3/silver_chariot.dart';
import 'package:stands3/the_fool.dart';
import 'package:stands3/the_world.dart';
import 'package:stands3/tower_of_gray.dart';
import 'package:stands3/dark_blue_moon.dart';
import 'package:stands3/strength.dart';
// import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'ad_helper.dart';

void main() => runApp(AllStands());

class AllStands extends StatefulWidget {
  @override
  _AllStandsState createState() => _AllStandsState();
}

class _AllStandsState extends State<AllStands> {
  BannerAd _bannerAd;
  bool _isBannerAdReady = false;

  @override
  void initState() {
    // TODO: Initialize _bannerAd
    _bannerAd = BannerAd(
      adUnitId: AdHelper.bannerAdUnitId,
      request: AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(
        onAdLoaded: (_) {
          setState(() {
            _isBannerAdReady = true;
          });
        },
        onAdFailedToLoad: (ad, err) {
          print('Failed to load a banner ad: ${err.message}');
          _isBannerAdReady = false;
          ad.dispose();
        },
      ),
    );

    _bannerAd.load();
  }

  @override
  void dispose() {
    // TODO: Dispose a BannerAd object
    _bannerAd.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //
    //
    //
    @override
    Widget myAd = Container(
      child: Container(
        // decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(10),
        //     color: Color.fromARGB(255, 76, 84, 88)),**--*325
        width: _bannerAd.size.width.toDouble(),
        height: _bannerAd.size.height.toDouble(),
        child: AdWidget(ad: _bannerAd),
      ),
    );
    @override
    Widget starPlatirnumWidget = Container(
        child: Row(
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(alignment: AlignmentDirectional.topEnd, children: [
              InkWell(
                  child: Container(
                    height: 150,
                    width: 150,
                    margin: EdgeInsets.only(bottom: 5),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/images/stands/stand heads/star platinum head.jpg'),
                        fit: BoxFit.fill,
                      ),
                      color: Colors.black,
                      border: Border.all(
                        color: Colors.black,
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).push(_starplatinumroute());
                  }),
              Container(
                color: Colors.grey[700],
                width: 25,
                height: 25,
                child: Icon(
                  MdiIcons.arrowBottomLeftThick,
                  size: 25,
                  color: Colors.white,
                ),
              ),
            ]),
            Container(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(3),
              ),
              margin: EdgeInsets.only(left: 5, top: 5),
              child: Column(children: <Widget>[
                SizedBox(
                  width: 220,
                  height: 21,
                  child: Text(
                    'Name: Star Platinum',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 220,
                  height: 21,
                  child: Text(
                    'Master:Jotaro Joestar ',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 220,
                  height: 40,
                  child: Text(
                    'Type: Close Combat',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                )
              ]),
            )
          ],
        )
      ],
    ));

//
//
//
    @override
    Widget hierophantGreenWidget = Container(
        child: Row(
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(alignment: AlignmentDirectional.topEnd, children: [
              InkWell(
                  child: Container(
                    height: 150,
                    width: 150,
                    margin: EdgeInsets.only(bottom: 5),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/images/stands/stand heads/h-green head.jpg'),
                        fit: BoxFit.fill,
                      ),
                      color: Colors.black,
                      border: Border.all(
                        color: Colors.black,
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).push(_heirophantgreenroute());
                  }),
              Container(
                color: Colors.grey[700],
                width: 25,
                height: 25,
                child: Icon(
                  MdiIcons.arrowBottomLeftThick,
                  size: 25,
                  color: Colors.white,
                ),
              ),
            ]),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: Colors.blueGrey),
              margin: EdgeInsets.only(left: 5, top: 5),
              child: Column(children: <Widget>[
                SizedBox(
                  width: 220,
                  height: 21,
                  child: Text(
                    'Name: Hierophant Green',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 220,
                  height: 21,
                  child: Text(
                    'Master:Noriaki Kakyoin ',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 220,
                  height: 40,
                  child: Text(
                    'Type: Ranged Combat',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                )
              ]),
            )
          ],
        )
      ],
    ));

//
//
//
    @override
    Widget magiciansRedWidget = Container(
        child: Row(
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(alignment: AlignmentDirectional.topEnd, children: [
              InkWell(
                  child: Container(
                    height: 150,
                    width: 150,
                    margin: EdgeInsets.only(bottom: 5),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/images/stands/stand heads/magicians red head.gif'),
                        fit: BoxFit.fill,
                      ),
                      color: Colors.black,
                      border: Border.all(
                        color: Colors.black,
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).push(_magiciansredroute());
                  }),
              Container(
                color: Colors.grey[700],
                width: 25,
                height: 25,
                child: Icon(
                  MdiIcons.arrowBottomLeftThick,
                  size: 25,
                  color: Colors.white,
                ),
              ),
            ]),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.blueGrey),
              margin: EdgeInsets.only(left: 5, top: 5),
              child: Column(children: <Widget>[
                SizedBox(
                  width: 220,
                  height: 21,
                  child: Text(
                    'Name: Magicians Red',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 220,
                  height: 21,
                  child: Text(
                    'Master:Muhammed Advol',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 220,
                  height: 40,
                  child: Text(
                    'Type: Ranged Combat',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                )
              ]),
            )
          ],
        )
      ],
    ));

//
//
//
    @override
    Widget hermitPurpleWidget = Container(
        child: Row(
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(alignment: AlignmentDirectional.topEnd, children: [
              InkWell(
                  child: Container(
                    height: 150,
                    width: 150,
                    margin: EdgeInsets.only(bottom: 5),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/images/stands/stand heads/hermit purple head.png'),
                        fit: BoxFit.fill,
                      ),
                      color: Colors.black,
                      border: Border.all(
                        color: Colors.black,
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).push(_hermitpurpleroute());
                  }),
              Container(
                color: Colors.grey[700],
                width: 25,
                height: 25,
                child: Icon(
                  MdiIcons.arrowBottomLeftThick,
                  size: 25,
                  color: Colors.white,
                ),
              ),
            ]),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.blueGrey),
              margin: EdgeInsets.only(left: 5, top: 5),
              child: Column(children: <Widget>[
                SizedBox(
                  width: 220,
                  height: 21,
                  child: Text(
                    'Name: Hermit Purple',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 220,
                  height: 21,
                  child: Text(
                    'Master:Joeseph Joestar',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 220,
                  height: 40,
                  child: Text(
                    'Type: Ranged Combat',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                )
              ]),
            )
          ],
        )
      ],
    ));

//
//
//
    @override
    Widget silverChariotWidget = Container(
        child: Row(
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(alignment: AlignmentDirectional.topEnd, children: [
              InkWell(
                  child: Container(
                    height: 150,
                    width: 150,
                    margin: EdgeInsets.only(bottom: 5),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/images/stands/stand heads/silver chariot head.png'),
                        fit: BoxFit.fill,
                      ),
                      color: Colors.black,
                      border: Border.all(
                        color: Colors.black,
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).push(_silverchariotroute());
                  }),
              Container(
                color: Colors.grey[700],
                width: 25,
                height: 25,
                child: Icon(
                  MdiIcons.arrowBottomLeftThick,
                  size: 25,
                  color: Colors.white,
                ),
              ),
            ]),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.blueGrey),
              margin: EdgeInsets.only(left: 5, top: 5),
              child: Column(children: <Widget>[
                SizedBox(
                  width: 220,
                  height: 21,
                  child: Text(
                    'Name: Silver Chariot',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 220,
                  height: 21,
                  child: Text(
                    'Master:Jean Polnareff',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 220,
                  height: 40,
                  child: Text(
                    'Type: Close Combat',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                )
              ]),
            )
          ],
        )
      ],
    ));

//
//
//
    @override
    Widget theFoolWidget = Container(
        child: Row(
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(alignment: AlignmentDirectional.topEnd, children: [
              InkWell(
                  child: Container(
                    height: 150,
                    width: 150,
                    margin: EdgeInsets.only(bottom: 5),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/images/stands/stand heads/the fool head.png'),
                        fit: BoxFit.fill,
                      ),
                      color: Colors.black,
                      border: Border.all(
                        color: Colors.black,
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).push(_thefoolroute());
                  }),
              Container(
                color: Colors.grey[700],
                width: 25,
                height: 25,
                child: Icon(
                  MdiIcons.arrowBottomLeftThick,
                  size: 25,
                  color: Colors.white,
                ),
              ),
            ]),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.blueGrey),
              margin: EdgeInsets.only(left: 5, top: 5),
              child: Column(children: <Widget>[
                SizedBox(
                  width: 220,
                  height: 21,
                  child: Text(
                    'Name: The Fool',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 220,
                  height: 23,
                  child: Text(
                    'Master:Iggy',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 220,
                  height: 40,
                  child: Text(
                    'Type: Versatile',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                )
              ]),
            )
          ],
        )
      ],
    ));

//
//
//
    @override
    Widget theWorldWidget = Container(
        child: Row(
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(alignment: AlignmentDirectional.topEnd, children: [
              InkWell(
                  child: Container(
                    height: 150,
                    width: 150,
                    margin: EdgeInsets.only(bottom: 5),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/images/stands/stand heads/the world head.png'),
                        fit: BoxFit.fill,
                      ),
                      color: Colors.black,
                      border: Border.all(
                        color: Colors.black,
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).push(_theworldroute());
                  }),
              Container(
                color: Colors.grey[700],
                width: 25,
                height: 25,
                child: Icon(
                  MdiIcons.arrowBottomLeftThick,
                  size: 25,
                  color: Colors.white,
                ),
              ),
            ]),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.blueGrey),
              margin: EdgeInsets.only(left: 5, top: 5),
              child: Column(children: <Widget>[
                SizedBox(
                  width: 220,
                  height: 21,
                  child: Text(
                    'Name: The World',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 220,
                  height: 21,
                  child: Text(
                    'Master:Dio Brando',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 220,
                  height: 40,
                  child: Text(
                    'Type: Close Combat',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                )
              ]),
            )
          ],
        )
      ],
    ));

//
//
//
    @override
    Widget towerOfGrayWidget = Container(
        child: Row(
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(alignment: AlignmentDirectional.topEnd, children: [
              InkWell(
                  child: Container(
                    height: 150,
                    width: 150,
                    margin: EdgeInsets.only(bottom: 5),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/images/stands/stand heads/tower of gray head.png'),
                        fit: BoxFit.fill,
                      ),
                      color: Colors.black,
                      border: Border.all(
                        color: Colors.black,
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).push(_towerofgrayroute());
                  }),
              Container(
                color: Colors.grey[700],
                width: 25,
                height: 25,
                child: Icon(
                  MdiIcons.arrowBottomLeftThick,
                  size: 25,
                  color: Colors.white,
                ),
              ),
            ]),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.blueGrey),
              margin: EdgeInsets.only(left: 5, top: 5),
              child: Column(children: <Widget>[
                SizedBox(
                  width: 220,
                  height: 21,
                  child: Text(
                    'Name: Tower Of Gray',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 220,
                  height: 21,
                  child: Text(
                    'Master:Gray Fly',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 220,
                  height: 40,
                  child: Text(
                    'Type: Speed',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                )
              ]),
            )
          ],
        )
      ],
    ));

//
//
//
    @override
    Widget darkBlueMoonWidget = Container(
        child: Row(
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(alignment: AlignmentDirectional.topEnd, children: [
              InkWell(
                  child: Container(
                    height: 150,
                    width: 150,
                    margin: EdgeInsets.only(bottom: 5),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/images/stands/stand heads/dark blue moon head.png'),
                        fit: BoxFit.fill,
                      ),
                      color: Colors.black,
                      border: Border.all(
                        color: Colors.black,
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).push(_darkbluemoonroute());
                  }),
              Container(
                color: Colors.grey[700],
                width: 25,
                height: 25,
                child: Icon(
                  MdiIcons.arrowBottomLeftThick,
                  size: 25,
                  color: Colors.white,
                ),
              ),
            ]),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.blueGrey),
              margin: EdgeInsets.only(left: 5, top: 5),
              child: Column(children: <Widget>[
                SizedBox(
                  width: 220,
                  height: 21,
                  child: Text(
                    'Name: Dark Blue Moon',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 220,
                  height: 21,
                  child: Text(
                    'Master: Captain Tennille',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 220,
                  height: 40,
                  child: Text(
                    'Type: Aquatic Combat',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                )
              ]),
            )
          ],
        )
      ],
    ));

//
//
//
    @override
    Widget strengthWidget = Container(
        child: Row(
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(alignment: AlignmentDirectional.topEnd, children: [
              InkWell(
                  child: Container(
                    height: 150,
                    width: 150,
                    margin: EdgeInsets.only(bottom: 5),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/images/stands/stand heads/strength head.png'),
                        fit: BoxFit.fill,
                      ),
                      color: Colors.black,
                      border: Border.all(
                        color: Colors.black,
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).push(_strengthroute());
                  }),
              Container(
                color: Colors.grey[700],
                width: 25,
                height: 25,
                child: Icon(
                  MdiIcons.arrowBottomLeftThick,
                  size: 25,
                  color: Colors.white,
                ),
              ),
            ]),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.blueGrey),
              margin: EdgeInsets.only(left: 5, top: 5),
              child: Column(children: <Widget>[
                SizedBox(
                  width: 220,
                  height: 21,
                  child: Text(
                    'Name: Strength',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 220,
                  height: 21,
                  child: Text(
                    'Master: Forever',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 220,
                  height: 40,
                  child: Text(
                    'Type: Versatile',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                )
              ]),
            )
          ],
        )
      ],
    ));

    Widget moreComing = Container(
      child: Text(
        'More Coming Soon!',
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 40, color: Colors.white),
      ),
    );

//
//
//
//
//
//
//
//
//
//
//

    return Scaffold(
        appBar: AppBar(
            // gradient: LinearGradient(
            //     begin: Alignment.topLeft,
            //     end: Alignment.bottomRight,
            //     colors: <Color>[
            //       Color.fromARGB(255, 24, 118, 212),
            //       Color.fromARGB(255, 67, 160, 71),
            //       Color.fromARGB(255, 192, 202, 51)
            //     ]),
            actions: <Widget>[
              Container(
                  width: 110,
                  child: Image.asset('assets/jojo_text-removebg-preview.png')),
            ], title: Text('All Stands')),
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                        'assets/images/backgrounds/joseph background.jpg'))),
            child: ListView(
              padding: EdgeInsets.only(left: 5, top: 2),
              children: <Widget>[
                myAd,
                starPlatirnumWidget,
                hierophantGreenWidget,
                magiciansRedWidget,
                hermitPurpleWidget,
                silverChariotWidget,
                theFoolWidget,
                theWorldWidget,
                towerOfGrayWidget,
                darkBlueMoonWidget,
                strengthWidget,
                moreComing,
              ],
            )));
  }
}
//
//
//
//
//
//
//
//
//
//
///
/////
/////
///

/*Route Methods*/

Route _starplatinumroute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => StarPlatinumPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

Route _heirophantgreenroute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        HierophantGreenPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

Route _magiciansredroute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => MagiciansRedPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

Route _hermitpurpleroute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => HermitPurplePage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

Route _silverchariotroute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        SilverChariotPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

Route _thefoolroute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => TheFoolPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

Route _theworldroute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => TheWorldPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

Route _towerofgrayroute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => TowerOfGrayPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

Route _darkbluemoonroute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => DarkBlueMoonPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

Route _strengthroute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => StrengthPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
