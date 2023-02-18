import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instragramclone/constants/color.dart';
import 'package:instragramclone/constants/textstyle.dart';
import 'package:instragramclone/screen/bottomscreen/home/subscreen/chat/chatutiles/chat_utiles.dart';
import 'package:instragramclone/screen/bottomscreen/home/subscreen/chat/controller/chat_common_controller.dart';

class ChatScreen extends StatelessWidget {
  final ChatCommentController chatCommentController =
      Get.put(ChatCommentController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.white,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        foregroundColor: ColorConst.black2A,
        backgroundColor: ColorConst.white,
        centerTitle: true,
        title: Text(
          "Esther Howard",
          style: TextStyleClass.sourceSansProSemiBold(size: 22.0),
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TabBar(
              controller: chatCommentController.controller,
              tabs: chatCommentController.myTabs,
              unselectedLabelColor: ColorConst.grey81,
              labelStyle: TextStyleClass.sourceSansProSemiBold(),
              labelColor: ColorConst.appColor,
              indicatorColor: ColorConst.appColor,
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: chatCommentController.controller,
              children: [
                ChatListScreen(),
                CallListScreen(),
                RequestsListScreen(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
