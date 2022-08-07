import 'package:facebook_ui/assets_refacts.dart';
import 'package:facebook_ui/widgets/avatar.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  const RoomSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      
      height: 80,
      color: Colors.white,
      child: ListView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          
          createRoomButton(),
          Avatar(displayImage: dulquer, height: 60, width: 60, statusIndicator: true),
          Avatar(displayImage: fahadfasil, height: 60, width: 60, statusIndicator: true),
          Avatar(displayImage: jayasurya, height: 60, width: 60, statusIndicator: true),
          Avatar(displayImage: prithviraj, height: 60, width: 60, statusIndicator: true),
          Avatar(displayImage: mammooty, height: 60, width: 60, statusIndicator: true),
          Avatar(displayImage: chackochan, height: 60, width: 60, statusIndicator: true),
          Avatar(displayImage: mohanlal, height: 60, width: 60, statusIndicator: true),
          Avatar(displayImage: vijay, height: 60, width: 60, statusIndicator: true),
        ],
      ),
    );
  }

  Widget createRoomButton() {
    return Container(
      padding: EdgeInsets.only(
       right: 5,
       top: 4,
       bottom: 4,
      ),
      child: OutlinedButton.icon(
        style: OutlinedButton.styleFrom(
          side: const BorderSide(
            color: Colors.lightBlue,
          ),
          shape: const StadiumBorder(),
        ),
        onPressed: () {},
        icon: const Icon(
          Icons.live_tv_rounded,
          color: Colors.purple,
        ),
        label: const Text('Create\n Room'),
      ),
    );
  }
}
