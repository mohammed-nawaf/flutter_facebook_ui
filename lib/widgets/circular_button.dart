import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  const CircularButton({
    Key? key,
    required this.buttonIcon,
    required this.actionButton,
    this.iconColor = Colors.black,
  }) : super(key: key);

  final IconData buttonIcon;
  final Color iconColor;
  final void Function() actionButton;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: () {
          actionButton();
        },
        icon: Icon(
          buttonIcon,
          color: iconColor,
          size: 28,
        ),
      ),
    );
  }
}
