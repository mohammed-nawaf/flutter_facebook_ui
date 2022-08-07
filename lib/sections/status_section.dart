import 'package:facebook_ui/assets_refacts.dart';
import 'package:facebook_ui/widgets/avatar.dart';
import 'package:flutter/material.dart';

class StatusSection extends StatelessWidget {
  const StatusSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.white,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      contentPadding: const EdgeInsets.all(6),
      leading: Avatar(displayImage: dulquer, statusIndicator: false, displayBorder: false),
      title: const TextField(
        decoration: InputDecoration(
            hintText: "What's on your mind?",
            hintStyle: TextStyle(letterSpacing: .5),
            border: InputBorder.none),
      ),
      
    );
  }
}
