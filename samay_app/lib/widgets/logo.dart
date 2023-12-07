import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Logo extends StatelessWidget {
  final String title; 

  const Logo({
    required this.title
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      margin: EdgeInsets.only(top: 50),
      child: Column(
        children: <Widget>[
          SizedBox(height: 10),
          Image.asset("assets/logo.png"),
          SizedBox(height: 20),
          Text(title, style: GoogleFonts.openSans(fontSize: 22)),
        ],
      ),
    );
  }
}
