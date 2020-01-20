import 'package:flutter/material.dart';

class FancyRaisedButton extends StatelessWidget {
  FancyRaisedButton({this.text, this.onPressed});

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
        onPressed: onPressed,
        color: Color(0xFF3467E3),
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(30.0),
        ));
  }
}
