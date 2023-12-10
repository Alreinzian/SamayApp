import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:samay_app/pages/info_page.dart';

class CardTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(children: [
      TableRow(children: [
        _SingleCard(
          color: Color.fromARGB(255, 80, 170, 245),
          icon: Icons.class_outlined,
          text: "Agenda",
          onPressed: () {
            print("Hello daniel");
          },
        ),
        _SingleCard(
          color: Color.fromARGB(255, 65, 245, 71),
          icon: Icons.eco_outlined,
          text: "Consejos",
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => InfoPage(),
              ),
            );
          },
        ),
      ]),
      TableRow(children: [
        _SingleCard(
          color: Color.fromARGB(255, 228, 53, 40),
          icon: Icons.local_shipping_outlined,
          text: "Recojo",
          onPressed: () {
            print("Hello daniel");
          },
        ),
        _SingleCard(
          color: Color.fromARGB(255, 153, 124, 242),
          icon: Icons.leaderboard_outlined,
          text: "Métricas",
          onPressed: () {
            print("Hello daniel");
          },
        ),
      ]),
      TableRow(children: [
        _SingleCard(
          color: Color.fromARGB(255, 154, 116, 206),
          icon: Icons.card_giftcard_outlined,
          text: "Transacciones",
          onPressed: () {
            print("Hello daniel");
          },
        ),
        _SingleCard(
          color: Colors.orange,
          icon: Icons.group_work_sharp,
          text: "About us",
          onPressed: () {
            print("Hello daniel");
          },
        ),
      ]),
    ]);
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;
  final VoidCallback onPressed;
  const _SingleCard(
      {required this.icon,
      required this.color,
      required this.text,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(15),
        height: 160,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 241, 241, 245),
          borderRadius: BorderRadius.circular(20),
          boxShadow: <BoxShadow>[
            BoxShadow(color: Colors.black38, blurRadius: 10, spreadRadius: -5),
          ],
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          GestureDetector(
            onTap: onPressed,
            child: CircleAvatar(
              backgroundColor: color,
              child: Icon(icon, size: 30),
              radius: 30,
            ),
          ),
          SizedBox(height: 10),
          Text(
            text,
            style: GoogleFonts.roboto(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black54,
            ),
            textAlign: TextAlign.center,
          )
        ]));
  }
}
