import 'package:flutter/material.dart';

class AppBarButtons extends StatelessWidget {
  const AppBarButtons({Key? key, required this.buttonIcon, required this.actionButton, }) : super(key: key);

  final IconData buttonIcon;
  final void Function() actionButton;
  @override
  Widget build(BuildContext context) {
    return Container(
            margin: EdgeInsets.all(10),
            decoration:const BoxDecoration(
              color: Colors.grey,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () {
                actionButton();
              },
              icon: Icon(buttonIcon,
                color: Colors.black,
                size: 28,
              ),
            ),
          );
  }
}