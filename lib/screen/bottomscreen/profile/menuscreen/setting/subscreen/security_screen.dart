import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instragramclone/constants/color.dart';
import 'package:instragramclone/constants/images.dart';
import 'package:instragramclone/constants/textstyle.dart';
import 'package:instragramclone/screen/bottomscreen/profile/profileutiles/profile_utiles.dart';

class SecurityScreen extends StatelessWidget {
  const SecurityScreen({Key? key}) : super(key: key);

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
          "Security",
          style: TextStyleClass.sourceSansProSemiBold(
            size: 22.0,
            color: ColorConst.black2A,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Text(
              "Login security",
              style: TextStyleClass.sourceSansProSemiBold(
                size: 22.0,
                color: ColorConst.black2A,
              ),
            ),
          ),
          commonListTileSetting(
            onTap: () {
              // Get.to(() => NotificationScreen());
            },
            title: "Password",
            image: SvgPicture.asset(ImageCons.keyIcon),
          ),
          commonListTileSetting(
            onTap: () {
              // Get.to(() => NotificationScreen());
            },
            title: "Login activity",
            image: Icon(
              Icons.location_on_outlined,
              color: ColorConst.appColor,
            ),
          ),
          commonListTileSetting(
            onTap: () {
              // Get.to(() => NotificationScreen());
            },
            title: "Saved login info",
            image: SvgPicture.asset(
              ImageCons.privacyIcon,
            ),
          ),
          commonListTileSetting(
            onTap: () {
              // Get.to(() => NotificationScreen());
            },
            title: "Two-factor authentication",
            image: SvgPicture.asset(
              ImageCons.twoFactorIcon,
            ),
          ),
          commonListTileSetting(
            onTap: () {
              // Get.to(() => NotificationScreen());
            },
            title: "Emails from Chatgram",
            image: SvgPicture.asset(
              ImageCons.messageBox,
            ),
          ),
          commonListTileSetting(
            onTap: () {
              // Get.to(() => NotificationScreen());
            },
            title: "Security Checkup",
            image: SvgPicture.asset(
              ImageCons.securityCheckIcon,
            ),
          ),
          Divider(
            height: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Text(
              "Data and history",
              style: TextStyleClass.sourceSansProSemiBold(
                size: 22.0,
                color: ColorConst.black2A,
              ),
            ),
          ),
          commonListTileSetting(
            onTap: () {
              // Get.to(() => NotificationScreen());
            },
            title: "Apps and Websites",
            image: SvgPicture.asset(
              ImageCons.desktopIcon,
            ),
          ),
        ],
      ),
    );
  }
}
