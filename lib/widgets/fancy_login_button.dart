import 'package:animatron_app/widgets/pacman_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FancyLoginButton extends StatefulWidget {
  @override
  FancyLoginButtonState createState() {
    return new FancyLoginButtonState();
  }
}

class FancyLoginButtonState extends State<FancyLoginButton> {
  bool _isWaiting = true;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(30),
      onTap: () {
        setState(() {
          _isWaiting = !_isWaiting;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 250),
        curve: Curves.linear,
        decoration: BoxDecoration(
          color: Color(0xFF3467E3),
          borderRadius: BorderRadius.circular(30),
        ),
        width: _isWaiting ? 200 : 60,
        height: 50,
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: AnimatedOpacity(
                  duration: Duration(milliseconds: 200),
                  curve: Curves.easeIn,
                  opacity: _isWaiting ? 0.0 : 1.0,
                  child: PacManIndicator(
                    color: Colors.white,
                  )),
            ),
            Align(
              alignment: Alignment.center,
              child: AnimatedOpacity(
                duration: Duration(milliseconds: 150),
                opacity: _isWaiting ? 1.0 : 0.0,
                child: Text(
                  "LOG IN",
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
