import 'package:flutter/cupertino.dart';

class StoryLineView extends StatelessWidget {
  final String storyLine;

  StoryLineView(this.storyLine);

  @override
  Widget build(BuildContext context) {
    Text(storyLine);
  }
}
