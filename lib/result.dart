import 'package:flutter/material.dart';

class Result extends GetPicture {
  Result(int resultScore, Function resetHandler)
      : super(resetHandler, resultScore);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: ListView(
        children: <Widget>[
          GetPicture(resetHandler, resultScore),
          Align(
            alignment: Alignment.center,
            child: RaisedButton(
              child: Text(
                'Restart Quiz!',
                style: TextStyle(fontSize: 20),
              ),
              textColor: Colors.blue,
              onPressed: resetHandler,
            ),
          )
        ],
      ),
    );
  }
}
//
//
//

class GetPicture extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  GetPicture(this.resetHandler, this.resultScore);

  @override
  Widget build(BuildContext context) {
    Widget child;
    if (resultScore >= 11) {
      child = Container(
          margin: EdgeInsets.only(top: 10),
          child: Column(children: <Widget>[
            Container(
              height: 50,
              width: 150,
              child: Text(
                '$resultScore / 12',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white54,
                    fontSize: 30,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              child: Text(
                'You Got Star Platinum!',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white54),
              ),
            ),
            Container(
              height: 320,
              child: Image.asset(
                'assets/images/stands/star_platinum-removebg.png',
                fit: BoxFit.fill,
              ),
            ),
            Container(
                margin: EdgeInsets.only(right: 20, left: 20, bottom: 50),
                child: Text(
                  'Star Platinum (スタープラチナ（星の白金） Sutā Purachina) is the Stand of Jotaro Kujo. Among the very first Stands introduced, it is featured along with Jotaro in three parts of the series, most prominently in Stardust Crusaders. Star Platinum is a close-range Stand, with a basic reach of only 2 meters from Jotaro\'s body, but with incredible strength, speed, and precision.It is one of the most powerful Stands featured in the series. Its overwhelming physical prowess in every basic characteristic, save for range, coupled with Jotaro\'s own cleverness in combat, allows Jotaro to repeatedly prevail against many Stand users even without the usage of any special ability.',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white54),
                ))
          ]));
    } else if (resultScore >= 9 && resultScore <= 11) {
      child = Container(
          margin: EdgeInsets.only(top: 10),
          child: Column(children: <Widget>[
            Container(
              height: 50,
              width: 150,
              child: Text(
                '$resultScore / 12',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white54,
                    fontSize: 30,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              child: Text(
                'You Got Hierophant Green!',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white54),
              ),
            ),
            Container(
              child: Image.asset(
                'assets/images/stands/H-green-removebg.png',
                fit: BoxFit.fill,
              ),
            ),
            Container(
                margin: EdgeInsets.only(right: 20, left: 20, bottom: 50),
                child: Text(
                  'Hierophant Green (ハイエロファントグリーン（法皇の緑） Haierofanto Gurīn) is the Stand of Noriaki Kakyoin, featured in Stardust Crusaders. Hierophant Green is an elastic and remote Stand, capable of being deployed far away from its user and performing actions from a distance. Kakyoin has possessed this Stand since birth.',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white54),
                ))
          ]));
    } else if (resultScore >= 6 && resultScore <= 9) {
      child = Container(
          margin: EdgeInsets.only(top: 10),
          child: Column(children: <Widget>[
            Container(
              height: 50,
              width: 150,
              child: Text(
                '$resultScore / 12',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white54,
                    fontSize: 30,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              child: Text(
                'You Got Magicians Red!',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white54),
              ),
            ),
            Container(
              height: 400,
              child: Image.asset(
                'assets/images/stands/magicians_red-removebg.png',
                fit: BoxFit.fill,
              ),
            ),
            Container(
                margin: EdgeInsets.only(right: 20, left: 20, bottom: 50),
                child: Text(
                  'Magician\'s Red (マジシャンズレッド（魔術師の赤） Majishanzu Reddo) is the Stand of Muhammad Avdol, featured in Stardust Crusaders. Magician\'s Red is a powerful Stand with an advantage in range thanks to its ability to manipulate fire. Moreover, Magician\'s Red is still a physically powerful Stand, a single kick of his being able to shatter Judgement\'s armor, whereas Silver Chariot couldn\'t.[2] Avdol prefers open spaces in order to use said power more fully',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white54),
                ))
          ]));
    } else if (resultScore >= 3 && resultScore <= 6) {
      child = Container(
          margin: EdgeInsets.only(top: 10),
          child: Column(children: <Widget>[
            Container(
              height: 50,
              width: 150,
              child: Text(
                '$resultScore / 12',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white54,
                    fontSize: 30,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              child: Text(
                'You Got Silver Chariot!',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white54),
              ),
            ),
            Container(
              child: Image.asset(
                'assets/images/stands/silver_chariot_2-removebg.png',
                fit: BoxFit.fill,
              ),
            ),
            Container(
                margin: EdgeInsets.only(right: 20, left: 20, bottom: 50),
                child: Text(
                  'Silver Chariot (シルバーチャリオッツ（銀の戦車） Shirubā Chariottsu) is the Stand of Jean Pierre Polnareff, primarily featured in Stardust Crusaders and appearing briefly in Vento Aureo. Silver Chariot is a powerful, battle-dedicated close-range Stand that primarily fights with the rapier it is equipped with. All its powers directly assist the Stand in battle but have limited use anywhere else. It is an incredibly agile Stand, able to attack enemies with barrages of sword slashes and thrusts before the opponent can react.',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white54),
                ))
          ]));
    } else if (resultScore <= 2) {
      child = Container(
          margin: EdgeInsets.only(top: 10),
          child: Column(children: <Widget>[
            Container(
              height: 50,
              width: 150,
              child: Text(
                '$resultScore / 12',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white54,
                    fontSize: 30,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              height: 35,
              child: Text(
                'You Got Hermit Purple!',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white54),
              ),
            ),
            Container(
              child: Image.asset(
                'assets/images/stands/hermit_purple3-removebg.png',
                fit: BoxFit.fill,
              ),
            ),
            Container(
                margin: EdgeInsets.only(right: 20, left: 20, bottom: 50),
                child: Text(
                  'Hermit Purple (ハーミットパープル（隠者の紫） Hāmitto Pāpuru) is the Stand of Joseph Joestar, featured in Stardust Crusaders, and occasionally in Diamond is Unbreakable. Hermit Purple\'s vines are relatively weak, but they provide Joseph with considerable divination ability, enabling him to divine and materialize any type of information, such as an image, a location or even thoughts.',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white54),
                ))
          ]));
    }

    return new Container(child: child);
  }
}
