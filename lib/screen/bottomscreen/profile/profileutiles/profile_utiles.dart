import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:instragramclone/constants/color.dart';
import 'package:instragramclone/constants/images.dart';
import 'package:instragramclone/constants/textstyle.dart';
import 'package:instragramclone/screen/bottomscreen/profile/menuscreen/activity/activity_screen.dart';
import 'package:instragramclone/screen/bottomscreen/profile/menuscreen/closefriends/close_friends_screen.dart';
import 'package:instragramclone/screen/bottomscreen/profile/menuscreen/favorites/favorites_screen.dart';
import 'package:instragramclone/screen/bottomscreen/profile/menuscreen/qrcode/qr_code_screen.dart';
import 'package:instragramclone/screen/bottomscreen/profile/menuscreen/save/save_screen.dart';
import 'package:instragramclone/screen/bottomscreen/profile/menuscreen/setting/setting_screen.dart';

bottomSheetMenu(BuildContext context) {
  showModalBottomSheet(
    backgroundColor: ColorConst.white,
    context: context,
    builder: (builder) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          commonListTile(
            onTap: () {
              Get.to(() => SettingScreen());
            },
            image: ImageCons.settingIcon,
            title: "Settings",
          ),
          commonListTile(
            onTap: () {
              Get.to(() => ProfileActivityScreen());
            },
            image: ImageCons.activityIcon,
            title: "Your activity",
          ),
          commonListTile(
            onTap: () {
              Get.to(() => QrCodeScreen());
            },
            image: ImageCons.qrcodeIcon,
            title: "QR code",
          ),
          commonListTile(
            onTap: () {
              Get.to(() => SaveScreen());
            },
            image: ImageCons.saveIcon,
            title: "Saved",
          ),
          commonListTile(
            onTap: () {
              Get.to(() => CloseFriendsScreen());
            },
            image: ImageCons.closeFriendIcon,
            title: "Close Friends",
          ),
          commonListTile(
            onTap: () {
              Get.to(() => FavoritesScreen());
            },
            image: ImageCons.starIcon,
            title: "Favorites",
          ),
          SizedBox(
            height: 20,
          )
        ],
      );
    },
  );
}

commonListTile({var title, var image, var onTap}) {
  return ListTile(
    onTap: onTap,
    leading: SvgPicture.asset(
      image,
    ),
    title: Text(
      title,
      style: TextStyleClass.sourceSansProRegular(
        color: ColorConst.black2A,
        size: 16.0,
      ),
    ),
  );
}

///commontile setting
commonListTileSetting({var title, var image, var onTap}) {
  return ListTile(
    onTap: onTap,
    leading: image ?? SizedBox.shrink(),
    title: Text(
      title,
      style: TextStyleClass.sourceSansProRegular(
        color: ColorConst.black2A,
        size: 16.0,
      ),
    ),
  );
}

///commontile privacy
commonListTilePrivacy({var title, var image, var onTap, var trailing}) {
  return ListTile(
    onTap: onTap,
    leading: image,
    title: Text(
      title,
      style: TextStyleClass.sourceSansProRegular(
        color: ColorConst.black2A,
        size: 16.0,
      ),
    ),
    trailing: trailing,
  );
}
