import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instragramclone/constants/color.dart';
import 'package:instragramclone/constants/images.dart';
import 'package:instragramclone/constants/textstyle.dart';
import 'package:instragramclone/screen/bottomscreen/profile/controller/profilecontroller.dart';
import 'package:instragramclone/screen/bottomscreen/profile/userprofile/subscreen/user_profile_utiles.dart';

class UserProfileScreen extends StatelessWidget {
  final ProfileController profileController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.white,
      appBar: AppBar(
        backgroundColor: ColorConst.white,
        automaticallyImplyLeading: false,
        leadingWidth: 0,
        centerTitle: false,
        elevation: 0,
        title: Text(
          "Jane Cooper",
          style: TextStyleClass.sourceSansProBold(
            size: 22.0,
            color: ColorConst.black2A,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 20, right: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          ImageCons.pic1,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        "7,407",
                        style: TextStyleClass.sourceSansProSemiBold(
                          size: 18.0,
                          color: ColorConst.black2A,
                        ),
                      ),
                      Text(
                        "Posts",
                        style: TextStyleClass.sourceSansProRegular(
                          color: ColorConst.black2A,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "119M",
                        style: TextStyleClass.sourceSansProSemiBold(
                          size: 18.0,
                          color: ColorConst.black2A,
                        ),
                      ),
                      Text(
                        "Followers",
                        style: TextStyleClass.sourceSansProRegular(
                          color: ColorConst.black2A,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "416",
                        style: TextStyleClass.sourceSansProSemiBold(
                          size: 18.0,
                          color: ColorConst.black2A,
                        ),
                      ),
                      Text(
                        "Following",
                        style: TextStyleClass.sourceSansProRegular(
                          color: ColorConst.black2A,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 5, top: 5),
              child: Text(
                "Jane Cooper",
                style: TextStyleClass.sourceSansProSemiBold(
                  color: ColorConst.black2A,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 5),
              child: Text(
                "Lovely + Crazy Boy",
                style: TextStyleClass.sourceSansProRegular(
                  color: ColorConst.black2A,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 5),
              child: Text(
                "UI/UX Designer",
                style: TextStyleClass.sourceSansProRegular(
                  color: ColorConst.black2A,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 5),
              child: Text(
                "I Like Sports",
                style: TextStyleClass.sourceSansProRegular(
                  color: ColorConst.black2A,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 5),
              child: Text(
                "I Love Sports Cricket",
                style: TextStyleClass.sourceSansProRegular(
                  color: ColorConst.black2A,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 20),
              child: Text(
                "Wish Me on 06 December",
                style: TextStyleClass.sourceSansProRegular(
                  color: ColorConst.black2A,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: MaterialButton(
                onPressed: () {},
                elevation: 0,
                color: ColorConst.appColor,
                minWidth: Get.width,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  "Follow",
                  style: TextStyleClass.sourceSansProSemiBold(
                    color: ColorConst.white,
                    size: 16.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TabBar(
              tabs: profileController.myTabsProfile,
              controller: profileController.controllerProfile,
              unselectedLabelColor: ColorConst.grey99,
              labelColor: ColorConst.appColor,
              indicatorColor: ColorConst.appColor,
            ),
            Divider(
              height: 1,
            ),
            SizedBox(
              height: Get.height,
              child: TabBarView(
                controller: profileController.controllerProfile,
                children: [
                  PostScreen(),
                  TagScreen(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
