import 'package:flutter/material.dart';
import 'package:silver_martians/src/ask_name_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String name;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Silver Martian"),
          backgroundColor: Colors.black,
        ),
        body: AskNameScreen(),
      ),
    );
  }
}
