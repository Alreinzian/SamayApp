import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Label extends StatelessWidget {
  final String root;
  final String title;
  final String subTitle;
  const Label(
      {required this.root, required this.title, required this.subTitle});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            subTitle,
            style: GoogleFonts.openSans(
              color: Colors.black54,
              fontSize: 15,
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, root);
            },
            child: Text(title,
                style: GoogleFonts.openSans(
                  color: Color.fromRGBO(163, 73, 164, 1),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                )),
          )
        ],
      ),
    );
  }
}
