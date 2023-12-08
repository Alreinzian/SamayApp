import 'package:flutter/material.dart';

class BlueButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const BlueButton({required this.text, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Container(
          width: double.infinity,
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
            textAlign: TextAlign.center,
          )),
      style: ElevatedButton.styleFrom(
        shape: StadiumBorder(),
        backgroundColor: Color.fromRGBO(163, 73, 164, 1),
        foregroundColor: Colors.white,
      ),
      onPressed: onPressed,
    );
  }
}
