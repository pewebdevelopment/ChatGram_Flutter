import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instragramclone/constants/color.dart';
import 'package:instragramclone/constants/textstyle.dart';
import 'package:instragramclone/screen/bottomscreen/profile/followers/controller/followers_controller.dart';
import 'package:instragramclone/screen/bottomscreen/profile/followers/followers_utiles/followers_utiles.dart';

class FollowersTabScreen extends StatelessWidget {
  final FollowersController followersController =
      Get.put(FollowersController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.white,
      appBar: AppBar(
        backgroundColor: ColorConst.white,
        foregroundColor: ColorConst.black2A,
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Esther Howard",
          style: TextStyleClass.sourceSansProBold(
            size: 22.0,
            color: ColorConst.black2A,
          ),
        ),
        bottom: TabBar(
          tabs: followersController.myTabsProfile,
          controller: followersController.controllerProfile,
          indicatorColor: ColorConst.appColor,
          labelColor: ColorConst.appColor,
          labelStyle: TextStyleClass.sourceSansProSemiBold(),
          unselectedLabelStyle: TextStyleClass.sourceSansProSemiBold(),
          unselectedLabelColor: ColorConst.grey99,
        ),
      ),
      body: TabBarView(
        controller: followersController.controllerProfile,
        children: [
          FollowersScreen(),
          FollowingScreen(),
        ],
      ),
    );
  }
}
