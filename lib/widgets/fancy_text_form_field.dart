import 'package:flutter/material.dart';

class FancyTextFormField extends StatelessWidget {
  const FancyTextFormField({
    Key key,
    this.autoFocus = false,
    this.obscureText = false,
    this.hintText = "",
  }) : super(key: key);

  final bool autoFocus;
  final bool obscureText;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: autoFocus,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF3467E3), width: 2.2),
          borderRadius: BorderRadius.circular(32.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black26, width: 1.2),
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );
  }
}
