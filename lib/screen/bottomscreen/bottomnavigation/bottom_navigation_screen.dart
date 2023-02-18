import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:instragramclone/constants/color.dart';
import 'package:instragramclone/constants/images.dart';
import 'package:instragramclone/screen/bottomscreen/addpost/tabbar_view/tabbar_screen.dart';
import 'package:instragramclone/screen/bottomscreen/bottomnavigation/bottom_navigation_controller.dart';
import 'package:instragramclone/screen/bottomscreen/home/home_screen.dart';
import 'package:instragramclone/screen/bottomscreen/profile/profile_screen.dart';
import 'package:instragramclone/screen/bottomscreen/reeels/reels_screen.dart';

class BottomNavigationScreen extends StatelessWidget {
  final NavigationController navigationController =
      Get.put(NavigationController());

  final pages = [
    HomeScreen(),
    TabBarScreen(),
    ReelsScreen(),
    ProfileScreen(),
  ];

  buildMyNavBar(BuildContext context) {
    return Container(
      height: 75,
      decoration: BoxDecoration(
        color: ColorConst.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 16,
            spreadRadius: 0,
            offset: Offset(0, -4),
            color: ColorConst.black.withOpacity(0.08),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Obx(
            () => IconButton(
              enableFeedback: false,
              onPressed: () {
                navigationController.pageIndex.value = 0;
              },
              icon: navigationController.pageIndex.value == 0
                  ? SvgPicture.asset(ImageCons.homeFillIcon)
                  : SvgPicture.asset(ImageCons.homeIcon),
            ),
          ),
          Obx(
            () => IconButton(
              enableFeedback: false,
              onPressed: () {
                navigationController.pageIndex.value = 1;
              },
              icon: navigationController.pageIndex.value == 1
                  ? SvgPicture.asset(ImageCons.addPostFillIcon)
                  : SvgPicture.asset(ImageCons.addPostIcon),
            ),
          ),
          Obx(
            () => IconButton(
              enableFeedback: false,
              onPressed: () {
                navigationController.pageIndex.value = 2;
              },
              icon: navigationController.pageIndex.value == 2
                  ? SvgPicture.asset(ImageCons.reelFillIcon)
                  : SvgPicture.asset(ImageCons.reelIcon),
            ),
          ),
          Obx(
            () => IconButton(
              enableFeedback: false,
              onPressed: () {
                navigationController.pageIndex.value = 3;
              },
              icon: navigationController.pageIndex.value == 3
                  ? Image(image: AssetImage(ImageCons.profileFillIcon))
                  : Image(
                      image: AssetImage(ImageCons.profileIcon),
                    ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => Stack(
          alignment: Alignment.bottomCenter,
          children: [
            pages[navigationController.pageIndex.value],
            buildMyNavBar(context),
          ],
        ),
      ),
    );
  }
}
