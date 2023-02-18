import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:instragramclone/constants/color.dart';
import 'package:instragramclone/constants/images.dart';
import 'package:instragramclone/constants/textstyle.dart';
import 'package:instragramclone/screen/bottomscreen/profile/menuscreen/setting/subscreen/about_screen.dart';
import 'package:instragramclone/screen/bottomscreen/profile/menuscreen/setting/subscreen/account_screen.dart';
import 'package:instragramclone/screen/bottomscreen/profile/menuscreen/setting/subscreen/ads_screen.dart';
import 'package:instragramclone/screen/bottomscreen/profile/menuscreen/setting/subscreen/creator_screen.dart';
import 'package:instragramclone/screen/bottomscreen/profile/menuscreen/setting/subscreen/follow_invite_friends_screen.dart';
import 'package:instragramclone/screen/bottomscreen/profile/menuscreen/setting/subscreen/help_screen.dart';
import 'package:instragramclone/screen/bottomscreen/profile/menuscreen/setting/subscreen/notification_screen.dart';
import 'package:instragramclone/screen/bottomscreen/profile/menuscreen/setting/subscreen/privacy_screen.dart';
import 'package:instragramclone/screen/bottomscreen/profile/menuscreen/setting/subscreen/security_screen.dart';
import 'package:instragramclone/screen/bottomscreen/profile/menuscreen/setting/subscreen/set_theme_screen.dart';
import 'package:instragramclone/screen/bottomscreen/profile/profileutiles/profile_utiles.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.white,
      appBar: AppBar(
        backgroundColor: ColorConst.white,
        foregroundColor: ColorConst.black2A,
        centerTitle: true,
        elevation: 1,
        title: Text(
          "Settings",
          style: TextStyleClass.sourceSansProSemiBold(
            size: 22.0,
            color: ColorConst.black2A,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: TextFormField(
                  cursorColor: ColorConst.appColor,
                  // controller: controller!.searchTextController,
                  decoration: InputDecoration(
                    filled: true,
                    contentPadding:
                        EdgeInsets.only(left: 20, top: 16, bottom: 16),
                    fillColor: ColorConst.greyF3,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    suffixIcon: Icon(
                      Icons.mic_none,
                      color: ColorConst.black2A,
                    ),
                    hintText: "Type to search...",
                    hintStyle: TextStyleClass.capriolaRegular(
                      color: ColorConst.grey81,
                    ),
                  ),
                ),
              ),
              commonListTileSetting(
                onTap: () {
                  Get.to(
                    () => FollowInviteFriendsScreen(),
                  );
                },
                title: "Follow and invite friends",
                image: SvgPicture.asset(
                  ImageCons.userPlusIcon,
                ),
              ),
              commonListTileSetting(
                onTap: () {
                  Get.to(() => NotificationScreen());
                },
                title: "Notifications",
                image: Icon(
                  Icons.notifications_none_rounded,
                  color: ColorConst.appColor,
                ),
              ),
              commonListTileSetting(
                onTap: () {
                  Get.to(() => CreatorScreen());
                },
                title: "Creator",
                image: Icon(
                  Icons.headphones_outlined,
                  color: ColorConst.appColor,
                ),
              ),
              commonListTileSetting(
                onTap: () {
                  Get.to(() => PrivacyScreen());
                },
                title: "Privacy",
                image: SvgPicture.asset(
                  ImageCons.privacyIcon,
                ),
              ),
              commonListTileSetting(
                onTap: () {
                  Get.to(() => SecurityScreen());
                },
                title: "Security",
                image: SvgPicture.asset(
                  ImageCons.keyIcon,
                ),
              ),
              commonListTileSetting(
                onTap: () {
                  Get.to(() => AdsScreen());
                },
                title: "Ads",
                image: SvgPicture.asset(
                  ImageCons.adsIcon,
                ),
              ),
              commonListTileSetting(
                onTap: () {
                  Get.to(() => AccountScreen());
                },
                title: "Account",
                image: SvgPicture.asset(
                  ImageCons.userIcon,
                ),
              ),
              commonListTileSetting(
                onTap: () {
                  Get.to(() => HelpScreen());
                },
                title: "Help",
                image: SvgPicture.asset(
                  ImageCons.helpIcon,
                ),
              ),
              commonListTileSetting(
                onTap: () {
                  Get.to(() => AboutScreen());
                },
                title: "About",
                image: SvgPicture.asset(
                  ImageCons.aboutIcon,
                ),
              ),
              commonListTileSetting(
                onTap: () {
                  Get.to(() => SetThemeScreen());
                },
                title: "Theme",
                image: SvgPicture.asset(
                  ImageCons.paintRoller,
                ),
              ),
              ListTile(
                title: Text(
                  "Logins",
                  style: TextStyleClass.sourceSansProSemiBold(
                    color: ColorConst.black2A,
                    size: 18.0,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "Add account",
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
                title: Text(
                  "Log out",
                  style: TextStyleClass.sourceSansProSemiBold(
                    color: ColorConst.appColor,
                    size: 16.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
