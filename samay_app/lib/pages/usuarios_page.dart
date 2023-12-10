import 'package:flutter/material.dart';

class UsuariosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        elevation: 1,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.exit_to_app, color: Colors.black87),
          onPressed: () {},
        ),
        actions: <Widget>[
          Container(
              margin: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.menu_rounded,
                color: Colors.black,
                size: 28,
              ))
        ],
      ),
      body: Column(
        children: [
          Center(
            child: CircleAvatar(
              maxRadius: 50,
              backgroundImage: NetworkImage(
                  "https://i.blogs.es/dcb1ef/tanjiro-kamado-demon-slayer/840_560.jpeg"),
            ),
          ),
          Text(
            "@Kamado Tanjiro",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          

        ],
      ),
    );
  }
}
