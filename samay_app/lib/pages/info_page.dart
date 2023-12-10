import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Consejos de reciclaje",
          style: TextStyle(
            color: Color.fromRGBO(163, 73, 164, 1),
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CardInfo(
            imageAsset: 'assets/img2.jpg',
            title: 'Reciclado-PET en Lima',
            rating: 3,
          ),
          CardInfo(
            imageAsset: 'assets/img2.jpg',
            title: 'Uso del PET para proyectos educativos',
            rating: 3,
          ),
          CardInfo(
            imageAsset: 'assets/img2.jpg',
            title: 'Reciclado-PET en Lima',
            rating: 3,
          ),
        ],
      ),
    );
  }
}

class CardInfo extends StatefulWidget {
  final String imageAsset;
  final String? name;
  final String title;
  final double rating;

  const CardInfo({
    Key? key,
    required this.imageAsset,
    this.name,
    required this.title,
    required this.rating,
  }) : super(key: key);

  @override
  _CardInfoState createState() => _CardInfoState();
}

class _CardInfoState extends State<CardInfo> {
  late double _userRating;

  @override
  void initState() {
    super.initState();
    _userRating = widget.rating;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      surfaceTintColor: Colors.white60,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      elevation: 20,
      shadowColor: Colors.red.withOpacity(0.1),
      child: Column(
        children: [
          FadeInImage(
            image: AssetImage(widget.imageAsset),
            placeholder: const AssetImage("assets/jar-loading.gif"),
            width: double.infinity,
            height: 250,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          if (widget.name != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text(widget.name ?? "Sin título"),
            ),
          Column(
            children: [
              ListTile(
                title: Text(
                  widget.title,
                  style: GoogleFonts.roboto(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                  textAlign: TextAlign.left,
                ),
                subtitle: const Text("By Arturo Peñaloza"),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text("${_userRating}"),
                  const SizedBox(width: 5),
                  RatingBar.builder(
                    initialRating: _userRating,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Color.fromRGBO(163, 73, 164, 1),
                      size: 2,
                    ),
                    onRatingUpdate: (rating) {
                      setState(() {
                        _userRating = rating;
                      });
                      print(_userRating);
                    },
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text("Ver más..."),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
