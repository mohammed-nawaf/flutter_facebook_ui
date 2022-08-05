import 'package:facebook_ui/sections/header_section.dart';
import 'package:facebook_ui/sections/room_section.dart';
import 'package:facebook_ui/sections/status_section.dart';
import 'package:facebook_ui/widgets/appbar_buttons.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget horizontalDivider = Divider(
      height: 8,
      thickness: 12,
      color: Colors.grey[350],
    );

    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
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
            const StatusSection(),
            Divider(
              height: 0,
              thickness: 1,
            ),
            const HeaderButtons(),
            horizontalDivider,
            RoomSection(),
          ],
        ),
      ),
    );
  }
}
