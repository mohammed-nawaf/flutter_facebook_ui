import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  Avatar(
      {Key? key,
      required this.displayImage,
      required this.height,
      required this.width,
      required this.statusIndicator,})
      : super(key: key);

  String displayImage;
  double height;
  double width;
  bool statusIndicator;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.asset(
            displayImage,
            height: height,
            width: width,
            fit: BoxFit.contain,
          ),
        ),
      ),
      statusIndicator == true ? Positioned(
        bottom: 0,
        right: 1.0,
        child: Container(
          width: 15,
          height: 15,
          decoration: BoxDecoration(
            color: Colors.greenAccent,
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.white,
              width: 2,
            ),
          ),
        ),
      ) : SizedBox(),
    ]);
  }
}
