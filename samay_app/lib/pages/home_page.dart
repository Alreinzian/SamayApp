import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:samay_app/widgets/background.dart';
import 'package:samay_app/widgets/card_table.dart';
import 'package:samay_app/widgets/menu.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Background(),
        Stack(children: <Widget>[
          Positioned(
            top: 65,
            right: 20,
            child: Text(
              "¡Recicla!",
              style: GoogleFonts.roboto(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 150),
            child: CardTable(),
          ),
        ]),
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
