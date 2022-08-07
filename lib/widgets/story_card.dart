import 'package:facebook_ui/widgets/avatar.dart';
import 'package:facebook_ui/widgets/circular_button.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  StoryCard(
      {Key? key,
      required this.story,
      required this.dispText,
      required this.profileIcon,
      this.addStoryButton = false})
      : super(key: key);

  String story;
  String profileIcon;
  String dispText;
  bool addStoryButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      margin: const EdgeInsets.only(
        left: 5,
        right: 5,
        bottom: 10,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(story), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 5,
            top: 5,
            child: addStoryButton == true
                ? CircularButton(buttonIcon: Icons.add,iconColor: Colors.blue, actionButton: () {})
                : Avatar(
                    displayImage: profileIcon,
                    statusIndicator: false),
          ),
          Positioned(
              bottom: 10,
              left: 5,
              child: Text(
                dispText,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}
