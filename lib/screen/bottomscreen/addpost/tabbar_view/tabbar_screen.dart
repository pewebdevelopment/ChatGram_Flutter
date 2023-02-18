import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instragramclone/constants/color.dart';
import 'package:instragramclone/constants/textstyle.dart';
import 'package:instragramclone/screen/bottomscreen/addpost/add_live_screen.dart';
import 'package:instragramclone/screen/bottomscreen/addpost/add_post_screen.dart';
import 'package:instragramclone/screen/bottomscreen/addpost/add_reel_screen.dart';
import 'package:instragramclone/screen/bottomscreen/addpost/add_story_screen.dart';
import 'package:instragramclone/screen/bottomscreen/addpost/tabbar_view/tabbar_controller.dart';

class TabBarScreen extends StatelessWidget {
  final TabBarScreenController tabBarScreenController =
      Get.put(TabBarScreenController());

  final pages = [
    AddPostScreen(),
    AddStoryScreen(),
    AddReelScreen(),
    AddLiveScreen(),
  ];

  buildMyNavBar(BuildContext context) {
    return Container(
      height: 50,
      width: Get.width,
      margin: EdgeInsets.only(bottom: 80, left: 34, right: 34),
      decoration: BoxDecoration(
        color: ColorConst.black2A.withOpacity(0.98),
        borderRadius: BorderRadius.circular(55),
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 15, left: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Obx(
              () => TextButton(
                onPressed: () {
                  tabBarScreenController.pageIndex.value = 0;
                },
                child: Text(
                  "Post",
                  style: tabBarScreenController.pageIndex.value == 0
                      ? TextStyleClass.sourceSansProBold(
                          color: ColorConst.white,
                        )
                      : TextStyleClass.sourceSansProRegular(
                          color: ColorConst.white,
                        ),
                ),
              ),
            ),
            Obx(
              () => TextButton(
                onPressed: () {
                  tabBarScreenController.pageIndex.value = 1;
                },
                child: Text(
                  "Story",
                  style: tabBarScreenController.pageIndex.value == 1
                      ? TextStyleClass.sourceSansProBold(
                          color: ColorConst.white,
                        )
                      : TextStyleClass.sourceSansProRegular(
                          color: ColorConst.white,
                        ),
                ),
              ),
            ),
            Obx(
              () => TextButton(
                onPressed: () {
                  tabBarScreenController.pageIndex.value = 2;
                },
                child: Text(
                  "Reel",
                  style: tabBarScreenController.pageIndex.value == 2
                      ? TextStyleClass.sourceSansProBold(
                          color: ColorConst.white,
                        )
                      : TextStyleClass.sourceSansProRegular(
                          color: ColorConst.white,
                        ),
                ),
              ),
            ),
            Obx(
              () => TextButton(
                onPressed: () {
                  tabBarScreenController.pageIndex.value = 3;
                },
                child: Text(
                  "Live",
                  style: tabBarScreenController.pageIndex.value == 3
                      ? TextStyleClass.sourceSansProBold(
                          color: ColorConst.white,
                        )
                      : TextStyleClass.sourceSansProRegular(
                          color: ColorConst.white,
                        ),
                ),
              ),
            ),
          ],
        ),
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
            pages[tabBarScreenController.pageIndex.value],
            buildMyNavBar(context),
          ],
        ),
      ),
    );
  }
}
