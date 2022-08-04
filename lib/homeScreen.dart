import 'package:facebook_ui/widgets/appBarButtons.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 80,
        title: const Text(
          'facebook',
          style: TextStyle(
              color: Colors.blue, fontSize: 26, fontWeight: FontWeight.bold),
        ),
        actions: [
          AppBarButtons(
              buttonIcon: Icons.search,
              actionButton: () {
                print('Go to Search');
              }),
          AppBarButtons(
            buttonIcon: Icons.message_rounded,
            actionButton: () {
              print('Go to Messenger');
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Column(),
      ),
    );
  }
}
