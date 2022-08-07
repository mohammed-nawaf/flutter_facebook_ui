import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  Avatar({
    Key? key,
    required this.displayImage,
    this.statusIndicator = true,
    this.displayBorder = true,
  }) : super(key: key);

  String displayImage;
  bool statusIndicator;
  bool displayBorder;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: displayBorder == true
              ? Border.all(
                  color: Colors.blueAccent,
                  width: 3,
                )
              : Border(),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.asset(
            displayImage,
            height: 58,
            width: 58,
            fit: BoxFit.contain,
          ),
        ),
      ),
      statusIndicator == true
          ? Positioned(
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
            )
          : SizedBox(),
    ]);
  }
}
