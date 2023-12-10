import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Background extends StatelessWidget {
  final boxDecoration = BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.2, 0.8],
      colors: [
        Color.fromARGB(255, 241, 241, 245),
        Color.fromARGB(255, 250, 250, 252)
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(decoration: boxDecoration),
      Positioned(
        top: -100,
        left: -30,
        child: Stack(
          children: [
            _Box(),
            Container(
              margin: EdgeInsets.only(top: 60),
              height: 250,
              width: 250,
              child: SvgPicture.asset('assets/image2.svg'),
            ),
          ],
        ),
      ),
      Positioned(
        bottom: -200,
        right: -10,
        child: Stack(
          children: [
            _Box(),
          ],
        ),
      ),
    ]);
  }
}

class _Box extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Transform.rotate(
        angle: -pi / 5,
        child: Container(
          width: 360,
          height: 360,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80),
            gradient: LinearGradient(colors: [
              Color.fromRGBO(163, 73, 164, 1),
              Color.fromRGBO(163, 73, 172, 1),
            ]),
          ),
        ),
      ),
    ]);
  }
}
