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
          Avatar(displayImage: dulquer, displayBorder: false,),
          Avatar(displayImage: fahadfasil, displayBorder: false,),
          Avatar(displayImage: jayasurya, displayBorder: false,),
          Avatar(displayImage: prithviraj, displayBorder: false,),
          Avatar(displayImage: mammooty, displayBorder: false,),
          Avatar(displayImage: chackochan, displayBorder: false,),
          Avatar(displayImage: mohanlal, displayBorder: false,),
          Avatar(displayImage: vijay, displayBorder: false,),
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
