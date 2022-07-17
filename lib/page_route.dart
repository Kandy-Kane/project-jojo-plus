import 'package:flutter/material.dart';
import 'package:stands3/star_platinum_page.dart';
import 'package:stands3/hierophant_green.dart';
import 'package:stands3/magicians_red.dart';
import 'package:stands3/hermit_purple.dart';
import 'package:stands3/silver_chariot.dart';
import 'package:stands3/the_fool.dart';
import 'package:stands3/the_world.dart';
import 'package:stands3/tower_of_gray.dart';
import 'package:stands3/all_stands.dart';

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
