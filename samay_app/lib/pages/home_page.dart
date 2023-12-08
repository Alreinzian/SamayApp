import 'package:flutter/material.dart';
import 'package:samay_app/widgets/background.dart';
import 'package:samay_app/widgets/menu.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Background(),
        _MenuLocation(),
      ]),
    );
  }
}

class _MenuLocation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final widthScren = MediaQuery.of(context).size.width;
    return Positioned(
      bottom: 30,
      child: Container(
        width: widthScren,
        child: Align(
          child: Menu(),
        ),
      ),
    );
  }
}
