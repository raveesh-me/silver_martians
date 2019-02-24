import 'package:flutter/material.dart';
import 'package:silver_martians/src/story_route_generator.dart';

//This is the first screen of the application and contains the layout and logic for
//implementing

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
    //always dispose your controllers to avoid issues
    nameController.dispose();
    super.dispose();
  }

  onStartAdventurePressed() {
    print(nameController.text);
    Navigator.push(
        context,
        getRouteByStoryStage(
          StoryStage.page0,
          nameController.text,
        ));
  }
//attendance form:
//  https://goo.gl/kZHzWn


  //feedback form:
  //https://goo.gl/9bRWfx


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Silver Martian"),
        backgroundColor: Colors.black,
      ),
      body: Container(
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
      ),
    );
  }
}
