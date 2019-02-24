import 'package:flutter/material.dart';
import 'package:silver_martians/res/strings.dart';
import 'package:silver_martians/src/story_page_button.dart';

//this is the dummy route, it is not used for now, but when needed this was called to ensure the
//proper configuration of the screen widget
MaterialPageRoute dummyStoryScreenRoute = MaterialPageRoute(
  builder: (_) => StoryScreen(
        assetImagePath: "assets/images/page0.png",
        button1Function: () {
          print('1');
        },
        button1Text: "button 1",
        button2Text: "button 2",
        button2Function: () {
          print("button 2");
        },
        storyText: page2("raveesh"),
      ),
);


//this is the story screen
class StoryScreen extends StatelessWidget {

  //StoryScreen has been configured to take these inputs so that we can re-use code
  final String button1Text;
  final String button2Text;
  final Function button1Function;
  final Function button2Function;
  final String storyText;
  final String assetImagePath;

  const StoryScreen({
    Key key,
    @required this.button1Text,
    @required this.button2Text,
    @required this.button1Function,
    @required this.button2Function,
    @required this.storyText,
    @required this.assetImagePath,
  }) : super(key: key);


  //we use this null check to determine visibility of button1
  bool get shouldButton1BeVisible => button1Text != null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Silver Mars",
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Image.asset(assetImagePath),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(storyText),
            ),
            Spacer(),
            Visibility(
              //if null button1 will not be shown and thus the storyScreen becomes the
              //Story end screens whose states we dont need anymore
              visible: shouldButton1BeVisible,
              child: StoryPageButton(
                buttonText: button1Text,
                buttonFunction: button1Function,
              ),
            ),
            StoryPageButton(
              buttonText: button2Text,
              buttonFunction: button2Function,
            ),
          ],
        ),
      ),
    );
  }
}
