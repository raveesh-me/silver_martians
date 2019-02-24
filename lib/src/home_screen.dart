import 'package:flutter/material.dart';
import 'package:silver_martians/src/ask_name_screen.dart';

class HomeScreen extends StatelessWidget {
  //We did not really need a separate homescreen in this app, but it is generally wise
  //to separate the app as such because it helps us maintain a separate file to
  //keep track of app-level state
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AskNameScreen(),
    );
  }
}
