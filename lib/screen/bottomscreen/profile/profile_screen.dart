import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instragramclone/constants/color.dart';
import 'package:instragramclone/constants/images.dart';
import 'package:instragramclone/constants/textstyle.dart';
import 'package:instragramclone/screen/bottomscreen/home/datamodel/data_model.dart';
import 'package:instragramclone/screen/bottomscreen/profile/controller/profilecontroller.dart';
import 'package:instragramclone/screen/bottomscreen/profile/edit_profile_screen.dart';
import 'package:instragramclone/screen/bottomscreen/profile/followers/followers_screen.dart';
import 'package:instragramclone/screen/bottomscreen/profile/profileutiles/profile_utiles.dart';
import 'package:instragramclone/screen/bottomscreen/profile/userprofile/subscreen/user_profile_utiles.dart';
import 'package:instragramclone/screen/bottomscreen/profile/userprofile/user_profile_screen.dart';

class ProfileScreen extends StatelessWidget {
  final ProfileController profileController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.white,
      appBar: AppBar(
        backgroundColor: ColorConst.white,
        elevation: 0,
        leadingWidth: 0,
        centerTitle: false,
        title: Text(
          "Esther Howard",
          style: TextStyleClass.sourceSansProBold(
            size: 22.0,
            color: ColorConst.black2A,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add_circle_outline_sharp,
              color: ColorConst.black2A,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {
                bottomSheetMenu(context);
              },
              icon: Icon(
                Icons.menu,
                color: ColorConst.black2A,
              ),
            ),
          ),
        ],
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
                          ImageCons.pic2,
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
                  InkWell(
                    onTap: () {
                      Get.to(() => FollowersTabScreen());
                    },
                    child: Column(
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
                  ),
                  InkWell(
                    onTap: () {},
                    child: Column(
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
                onPressed: () {
                  Get.to(() => EditProfileScreen());
                },
                elevation: 0,
                color: ColorConst.greyE7,
                minWidth: Get.width,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  "Edit Profile",
                  style: TextStyleClass.sourceSansProSemiBold(
                    color: ColorConst.black2A,
                    size: 16.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20, left: 20, right: 20, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Discover People",
                    style: TextStyleClass.sourceSansProSemiBold(
                      color: ColorConst.black2A,
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyleClass.sourceSansProSemiBold(
                      size: 16.0,
                      color: ColorConst.appColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 210,
              child: ListView.builder(
                itemCount: homeSuggestionList.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Get.to(() => UserProfileScreen());
                    },
                    child: Container(
                      width: 155,
                      margin: EdgeInsets.only(right: 15, bottom: 20),
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                      decoration: BoxDecoration(
                        color: ColorConst.white,
                        border: Border.all(
                          color: ColorConst.appColor.withOpacity(0.12),
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    homeSuggestionList[index].image.toString()),
                              ),
                            ),
                          ),
                          Text(
                            homeSuggestionList[index].title.toString(),
                            style: TextStyleClass.sourceSansProSemiBold(
                              color: ColorConst.black2A,
                            ),
                          ),
                          Text(
                            homeSuggestionList[index].subtitle.toString(),
                            style: TextStyleClass.sourceSansProRegular(
                              color: ColorConst.grey949,
                            ),
                          ),
                          MaterialButton(
                            onPressed: () {},
                            height: 30,
                            minWidth: 120,
                            color: ColorConst.appColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            elevation: 0,
                            child: Text(
                              homeSuggestionList[index].bio1.toString(),
                              style: TextStyleClass.sourceSansProRegular(
                                color: ColorConst.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 20),
              ),
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
