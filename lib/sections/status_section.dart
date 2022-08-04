import 'package:facebook_ui/assets_refacts.dart';
import 'package:flutter/material.dart';

class StatusSection extends StatelessWidget {
  const StatusSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.white,
      contentPadding: EdgeInsets.all(8),
      

      leading: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.asset(
          dulquer,
          height: 60,
          width: 60,
          fit: BoxFit.contain,
        ),
      ),
      title: const TextField(
        decoration: InputDecoration(
            hintText: "What's on your mind?",
            hintStyle: TextStyle(letterSpacing: .5),
            border: InputBorder.none),
      ),
    );
  }
}
