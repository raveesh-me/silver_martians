import 'package:flutter/material.dart';
import 'package:silver_martians/src/story_screen.dart';

class AskNameScreen extends StatefulWidget {
  @override
  AskNameScreenState createState() {
    return new AskNameScreenState();
  }
}

class AskNameScreenState extends State<AskNameScreen> {

  TextEditingController nameController;


  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
  }


  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  onStartAdventurePressed() {
    print(nameController.text);
    Navigator.push(context, dummyStoryScreenRoute());
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/main_title.png"),
        ),
      ),
      child: Column(
        children: <Widget>[
          Spacer(),
          TextField(
            controller: nameController,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: "ENTER YOUR NAME",
            ),
          ),
          RaisedButton(
            onPressed: onStartAdventurePressed,
            child: Text("START YOUR ADVENTURE"),
          ),
        ],
      ),
    );
  }
}
