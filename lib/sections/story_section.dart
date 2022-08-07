import 'package:facebook_ui/assets_refacts.dart';
import 'package:facebook_ui/widgets/story_card.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  const StorySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: ListView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(story: dulquer, dispText: 'Add your Story', profileIcon: dulquer, addStoryButton: true),
          StoryCard(story: prithviraj, dispText: 'Prithviraj', profileIcon: prithviraj),
          StoryCard(story: fahadfasil, dispText: 'Fahad Fasil', profileIcon: fahadfasil),
          StoryCard(story: chackochan, dispText: 'Chackochan', profileIcon: chackochan),
          StoryCard(story: surya, dispText: 'Surya', profileIcon: surya),
          StoryCard(story: jayasurya, dispText: 'Jayasurya', profileIcon: jayasurya),
        ],
      ),
    );
  }
}
