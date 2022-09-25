import 'package:facebook_ui/assets_refacts.dart';
import 'package:facebook_ui/sections/header_section.dart';
import 'package:facebook_ui/sections/room_section.dart';
import 'package:facebook_ui/sections/status_section.dart';
import 'package:facebook_ui/sections/story_section.dart';
import 'package:facebook_ui/widgets/circular_button.dart';
import 'package:facebook_ui/widgets/post_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 70,
        title: Text(
          'facebook',
          style: TextStyle(
              color: Colors.blue[800],
              fontSize: 26,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          CircularButton(buttonIcon: Icons.search, actionButton: () {}),
          CircularButton(
            buttonIcon: Icons.chat_rounded,
            actionButton: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const StatusSection(),
            horizontalDivider(thickness: 1),
            const HeaderButtons(),
            const SizedBox(height: 10),
            const RoomSection(),
            const SizedBox(height: 10),
            const StorySection(),
            const SizedBox(height: 10),
            PostCard(
              profileImage: mammooty,
              showBlueTick: true,
              profileName: 'Mammooty',
              publishedAt: '5h',
              postTitle: '',
              postImage: mammooty,
              likeCount: '10k',
              commentCount: '1k',
              shareCount: '500',
            ),
            const SizedBox(height: 10),
            PostCard(
              profileImage: prithviraj,
              showBlueTick: true,
              profileName: 'prithviraj',
              publishedAt: '5h',
              postTitle: '',
              postImage: prithviraj,
              likeCount: '10k',
              commentCount: '1k',
              shareCount: '500',
            ),
          ],
        ),
      ),
    );
  }

  Divider horizontalDivider({
    required double thickness,
  }) {
    return Divider(
      height: 0,
      thickness: thickness,
      color: Colors.grey[350],
    );
  }
}
