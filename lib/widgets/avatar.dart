

import 'package:flutter/cupertino.dart';

class Avatar extends StatelessWidget {
   Avatar({Key? key, required this.displayImage, required this.height, required this.width}) : super(key: key);

  String displayImage;
  double height;
  double width;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.asset(
          displayImage,
          height: height,
          width: width,
          fit: BoxFit.contain,
        ),
      );
  }
}