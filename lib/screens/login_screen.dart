import 'package:animatron_app/widgets/fancy_text_form_field.dart';
import 'package:flutter/material.dart';

import '../widgets/fancy_raised_button.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => new _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final email = FancyTextFormField(
      hintText: 'Email address',
    );

    final password = FancyTextFormField(
      hintText: 'Password',
      obscureText: true,
    );

    final loginButton = Container(
      child: FancyRaisedButton(text: "LOG IN", onPressed: () {}),
      alignment: Alignment(0.0, 0.0),
    );

    final forgotLabel = FlatButton(
      child: Text(
        'Forgot password?',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {},
    );

    final logoImage = Image.asset(
      "assets/ghost.png",
      height: 140,
      width: 140,
    );

    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          padding: EdgeInsets.all(24.0),
          children: <Widget>[
            SizedBox(height: 100.0),
            logoImage,
            SizedBox(height: 80.0),
            email,
            SizedBox(height: 14.0),
            password,
            SizedBox(height: 24.0),
            loginButton,
            SizedBox(height: 24.0),
            forgotLabel
          ],
        ));
  }
}
