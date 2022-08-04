import 'package:flutter/material.dart';

class HeaderButtons extends StatelessWidget {
  const HeaderButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget verticalDivider = VerticalDivider(
      thickness: 1,
      color: Colors.grey[300],
    );

    return Container(
      
      color: Colors.white,
      height: 55,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          headerIconButtons(
              buttonAction: () {
                print('Live Button Clicked');
              },
              buttonIcon: Icons.video_call,
              iconColor: Colors.red,
              buttonText: 'Live',
              textColor: Colors.black),
          verticalDivider,
          headerIconButtons(
              buttonAction: () {
                print('Live Button Clicked');
              },
              buttonIcon: Icons.photo_library,
              iconColor: Colors.green,
              buttonText: 'Photo',
              textColor: Colors.black),
          verticalDivider,
          headerIconButtons(
              buttonAction: () {
                print('Live Button Clicked');
              },
              buttonIcon: Icons.live_tv_rounded,
              iconColor: Colors.purple,
              buttonText: 'Room',
              textColor: Colors.black),
        ],
      ),
    );
  }

  TextButton headerIconButtons({
    required void Function() buttonAction,
    required IconData buttonIcon,
    required Color iconColor,
    required String buttonText,
    required Color textColor,
  }) {
    return TextButton.icon(
        onPressed: buttonAction,
        icon: Icon(
          buttonIcon,
          color: iconColor,
        ),
        label: Text(
          buttonText,
          style: TextStyle(color: textColor),
        ));
  }
}
