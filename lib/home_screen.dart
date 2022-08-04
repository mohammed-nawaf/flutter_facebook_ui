import 'package:facebook_ui/sections/status_section.dart';
import 'package:facebook_ui/widgets/appbar_buttons.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 80,
        title:  Text(
          'facebook',
          style: TextStyle(
              color: Colors.blue[800], fontSize: 26, fontWeight: FontWeight.bold),
        ),
        actions: [
          AppBarButtons(
              buttonIcon: Icons.search,
              actionButton: () {
                print('Go to Search');
              }),
          AppBarButtons(
            buttonIcon: Icons.chat_rounded,
            actionButton: () {
              print('Go to Messenger');
            },
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            StatusSection(),
          ],
        ),
      ),
    );
  }
}
