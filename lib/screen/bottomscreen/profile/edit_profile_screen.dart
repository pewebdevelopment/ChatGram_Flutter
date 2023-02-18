import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instragramclone/constants/color.dart';
import 'package:instragramclone/constants/images.dart';
import 'package:instragramclone/constants/textstyle.dart';
import 'package:instragramclone/screen/bottomscreen/profile/personal_info_screen.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.white,
      appBar: AppBar(
        backgroundColor: ColorConst.white,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(
            Icons.clear,
            color: ColorConst.black2A,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        centerTitle: true,
        elevation: 1,
        title: Text(
          "Edit Profile",
          style: TextStyleClass.sourceSansProSemiBold(
            size: 22.0,
            color: ColorConst.black2A,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.check,
              color: ColorConst.appColor,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: 120,
                width: 120,
                margin: EdgeInsets.only(top: 30, bottom: 5),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      ImageCons.pic1,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Center(
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Change profile photo",
                  style: TextStyleClass.sourceSansProRegular(
                    size: 20.0,
                    color: ColorConst.appColor,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Text(
                "Name",
                style: TextStyleClass.sourceSansProRegular(
                  color: ColorConst.grey81,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35, top: 20, bottom: 20),
              child: Text(
                "Esther Howard",
                style: TextStyleClass.sourceSansProSemiBold(
                    color: ColorConst.black2A, size: 16.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Divider(
                height: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Text(
                "Username",
                style: TextStyleClass.sourceSansProRegular(
                  color: ColorConst.grey81,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35, top: 20, bottom: 20),
              child: Text(
                "Esther_Howard_05",
                style: TextStyleClass.sourceSansProSemiBold(
                    color: ColorConst.black2A, size: 16.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Divider(
                height: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Text(
                "Bio",
                style: TextStyleClass.sourceSansProRegular(
                  color: ColorConst.grey81,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35, top: 20, bottom: 20),
              child: Text(
                "♥️Official Account♥ ️💪I Love Fitness ❣ ️📸Photography❣ ️👔Business🔥 😎 Single 😉",
                style: TextStyleClass.sourceSansProSemiBold(
                    color: ColorConst.black2A, size: 16.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Divider(
                height: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Text(
                "Connected Facebook Page",
                style: TextStyleClass.sourceSansProSemiBold(size: 18.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Page",
                    style: TextStyleClass.sourceSansProSemiBold(size: 18.0),
                  ),
                  Row(
                    children: [
                      Text(
                        "Esther_Howard_65",
                        style: TextStyleClass.sourceSansProSemiBold(
                          color: ColorConst.grey99,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: ColorConst.grey99,
                        size: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              height: 1,
            ),
            ListTile(
              title: Text(
                "Switch to Professional account",
                style: TextStyleClass.sourceSansProSemiBold(
                  color: ColorConst.appColor,
                  size: 16.0,
                ),
              ),
            ),
            Divider(
              height: 1,
            ),
            ListTile(
              onTap: () {
                Get.to(() => PersonalInfoScreen());
              },
              title: Text(
                "Personal information Settings",
                style: TextStyleClass.sourceSansProSemiBold(
                  color: ColorConst.appColor,
                  size: 16.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
