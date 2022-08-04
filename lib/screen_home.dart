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
          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration:const BoxDecoration(
                color: Colors.grey,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () {
                  print('Go to search');
                },
                icon: const Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 28,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration:const BoxDecoration(
                color: Colors.grey,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () {
                  print('Go to Messenger');

                },
                icon: const Icon(
                  Icons.message_rounded,
                  color: Colors.black,
                  size: 28,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(),
      ),
    );
  }
}
