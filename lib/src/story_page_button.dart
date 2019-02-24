import 'package:flutter/material.dart';

class StoryPageButton extends StatelessWidget {

  //THis widget abstracts the styling aspects of the bottom buttons away from the main code
  //This allows us to reuse this button again and again without repeating the configuration steps.
  //This is called abstraction and is one of the things we do as part of "refactoring"
  final Function buttonFunction;
  final String buttonText;

  const StoryPageButton({
    Key key,
    @required this.buttonFunction,
    @required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: buttonFunction,
      child: Center(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18.0),
        child: Text(
          buttonText,
          style: TextStyle(color: Colors.white),
        ),
      )),
      color: Colors.blueGrey,
      padding: EdgeInsets.all(0),
    );
  }
}
