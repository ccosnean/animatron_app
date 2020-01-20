import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(new App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color.fromRGBO(239, 238, 239, 1.0),
      ),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
