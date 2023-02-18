import 'package:flutter/material.dart';
import 'package:instragramclone/constants/color.dart';
import 'package:instragramclone/constants/textstyle.dart';
import 'package:instragramclone/screen/bottomscreen/home/subscreen/chat/chatutiles/chat_utiles.dart';

class ChatDetailScreen extends StatelessWidget {
  const ChatDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.white,
      appBar: chatDetailAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          chatDetailCommonRow(text: "Hi"),
          SizedBox(
            height: 14,
          ),
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: chatDetailCommonRow(
              text: "Hi",
              color: ColorConst.appColor,
            ),
          ),
          SizedBox(
            height: 14,
          ),
          chatDetailCommonRow(text: "How are you"),
          SizedBox(
            height: 14,
          ),
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: chatDetailCommonRow(
              text: "I am fine. How are you",
              color: ColorConst.appColor,
            ),
          ),
          SizedBox(
            height: 14,
          ),
          chatDetailCommonRow(text: "I am also fine"),
          SizedBox(
            height: 14,
          ),
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: chatDetailCommonRow(
              text: "ok let’s meet tomorrow",
              color: ColorConst.appColor,
            ),
          ),
          SizedBox(
            height: 14,
          ),
          chatDetailCommonRow(text: "ok cool"),
          SizedBox(
            height: 11,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 70, bottom: 15),
            child: Text(
              "Double-tap to ♥",
              style: TextStyleClass.capriolaRegular(
                color: ColorConst.grey949,
              ),
            ),
          ),

          ///BOTTOM CONTAINER
          chatDetailTextFormFiled(),
        ],
      ),
    );
  }
}
