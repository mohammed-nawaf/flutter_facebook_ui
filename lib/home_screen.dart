import 'package:facebook_ui/sections/header_section.dart';
import 'package:facebook_ui/sections/room_section.dart';
import 'package:facebook_ui/sections/status_section.dart';
import 'package:facebook_ui/sections/story_section.dart';
import 'package:facebook_ui/widgets/circular_button.dart';
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
            SizedBox(height: 10,),
            const RoomSection(),
            SizedBox(height: 10),
            StorySection(),
            SizedBox(height: 10),
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
