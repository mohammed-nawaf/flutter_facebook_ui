import 'package:facebook_ui/assets_refacts.dart';
import 'package:facebook_ui/widgets/avatar.dart';
import 'package:facebook_ui/sections/header_section.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {

  
  const PostCard({
    Key? key,
    required this.profileImage,
    required this.profileName,
    required this.publishedAt,
    required this.postTitle,
    required this.postImage,
    required this.likeCount,
    required this.commentCount,
    required this.shareCount,
    this.showBlueTick = false,
  }) : super(key: key);

  final String profileImage;
  final String profileName;
  final String publishedAt;
  final String postTitle;
  final String postImage;
  final bool showBlueTick;
  final String likeCount;
  final String commentCount;
  final String shareCount;

  @override
  Widget build(BuildContext context) {
    
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          postHeader(),
          titleMessageBox(),
          postCardImage(),
          footerSection(),
        ],
      ),
    );
  }

  Container footerSection() {
    return Container(
      padding: EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.thumb_up,
                    color: Colors.white,
                    size: 10,
                  ),
                ),
                footerTextWidget(text: likeCount)
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                footerTextWidget(text: commentCount),
                SizedBox(width: 5),
                footerTextWidget(text: 'Comments'),
                SizedBox(width: 10),
                footerTextWidget(text: shareCount),
                SizedBox(width: 5),
                footerTextWidget(text: 'Shares'),
                Avatar(
                  displayImage: mammooty,
                  displayBorder: false,
                  statusIndicator: false,
                  width: 25,
                  height: 25,
                ),
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_down, color: Colors.grey[700],))
              ],
            ),
          ),
        ],
      ),
    );
  }

  Text footerTextWidget({required String text}) => Text(
        text,
        style: TextStyle(color: Colors.grey[700]),
      );

  Container postCardImage() {
    return Container(
      
      child: Image.asset(postImage,
      height: 500,),
    );
  }

  Container titleMessageBox() => Container(
        width: double.infinity,
        padding: const EdgeInsets.only(left: 15),
        margin: const EdgeInsets.all(8.0),
        child: Text(postTitle == null ? "" : postTitle),
      );

  ListTile postHeader() {
    return ListTile(
      leading: Avatar(
        displayImage: profileImage,
        displayBorder: false,
        statusIndicator: false,
      ),
      title: Row(
        children: [
          Text(profileName),
          const SizedBox(width: 10),
          showBlueTick ? blueTick() : const SizedBox(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(publishedAt == null ? "" : publishedAt),
          const SizedBox(width: 10),
          const Icon(
            Icons.public,
            size: 16,
          )
        ],
      ),
      trailing:
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz)),
    );
  }

  Container blueTick() {
    return Container(
      width: 12,
      height: 12,
      decoration: const BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle,
      ),
      child: const Icon(
        Icons.check,
        size: 10,
        color: Colors.white,
      ),
    );
  }
}
