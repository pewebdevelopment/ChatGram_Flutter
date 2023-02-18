import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:instragramclone/constants/color.dart';
import 'package:instragramclone/constants/images.dart';
import 'package:instragramclone/constants/textstyle.dart';
import 'package:instragramclone/screen/bottomscreen/profile/menuscreen/setting/subcontroller/notification_controller.dart';
import 'package:instragramclone/screen/bottomscreen/profile/profileutiles/profile_utiles.dart';

class PrivacyScreen extends StatelessWidget {
  final NotificationController notificationController =
      Get.put(NotificationController());

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
          "Privacy",
          style: TextStyleClass.sourceSansProSemiBold(
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
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: Text(
                "Account privacy",
                style: TextStyleClass.sourceSansProSemiBold(
                  size: 22.0,
                  color: ColorConst.black2A,
                ),
              ),
            ),
            commonListTilePrivacy(
              title: "Private account",
              image: SvgPicture.asset(ImageCons.lockIcon),
              trailing: Obx(
                () => CupertinoSwitch(
                  value: notificationController.isActive.value,
                  onChanged: (val) {
                    notificationController.isActive.value = val;
                  },
                  activeColor: ColorConst.appColor,
                ),
              ),
            ),
            Divider(
              height: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: Text(
                "Interactions",
                style: TextStyleClass.sourceSansProSemiBold(
                  size: 22.0,
                  color: ColorConst.black2A,
                ),
              ),
            ),
            commonListTilePrivacy(
              title: "Limits",
              image: SvgPicture.asset(ImageCons.limitsIcon),
              trailing: Text(
                "Off",
                style: TextStyleClass.sourceSansProRegular(
                  color: ColorConst.grey81,
                ),
              ),
            ),
            commonListTilePrivacy(
              title: "Hidden Words",
              image: Icon(
                Icons.visibility_off_outlined,
                color: ColorConst.appColor,
              ),
            ),
            commonListTilePrivacy(
              title: "Comments",
              image: Icon(
                CupertinoIcons.conversation_bubble,
                color: ColorConst.appColor,
              ),
              trailing: Text(
                "Everyone",
                style: TextStyleClass.sourceSansProRegular(
                  color: ColorConst.grey81,
                ),
              ),
            ),
            commonListTilePrivacy(
              title: "Posts",
              image: Icon(
                Icons.add_circle_outline_sharp,
                color: ColorConst.appColor,
              ),
            ),
            commonListTilePrivacy(
              title: "Mentions",
              image: SvgPicture.asset(ImageCons.atIcon),
              trailing: Text(
                "Everyone",
                style: TextStyleClass.sourceSansProRegular(
                  color: ColorConst.grey81,
                ),
              ),
            ),
            commonListTilePrivacy(
              title: "Story",
              image: SvgPicture.asset(ImageCons.storyClockIcon),
            ),
            commonListTilePrivacy(
              title: "Reels and Remix",
              image: SvgPicture.asset(ImageCons.monitorIcon),
            ),
            commonListTilePrivacy(
              title: "Live",
              image: SvgPicture.asset(ImageCons.brodcastIcon),
            ),
            commonListTilePrivacy(
              title: "Guides",
              image: Icon(
                Icons.grid_view_outlined,
                color: ColorConst.appColor,
              ),
            ),
            commonListTilePrivacy(
              title: "Activity Status",
              image: SvgPicture.asset(
                ImageCons.userIcon,
              ),
            ),
            commonListTilePrivacy(
              title: "Messages",
              image: SvgPicture.asset(ImageCons.messageIcon),
            ),
            Divider(
              height: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: Text(
                "Connections",
                style: TextStyleClass.sourceSansProSemiBold(
                  size: 22.0,
                  color: ColorConst.black2A,
                ),
              ),
            ),
            commonListTilePrivacy(
              title: "Restiricted accounts",
              image: SvgPicture.asset(ImageCons.userCircle),
            ),
            commonListTilePrivacy(
              title: "Blocked accounts",
              image: Icon(
                Icons.cancel_outlined,
                color: ColorConst.appColor,
              ),
            ),
            commonListTilePrivacy(
              title: "Muted accounts",
              image: Icon(
                Icons.notifications_off_outlined,
                color: ColorConst.appColor,
              ),
            ),
            commonListTilePrivacy(
              title: "Accounts you follow",
              image: SvgPicture.asset(ImageCons.users),
            ),
          ],
        ),
      ),
    );
  }
}
