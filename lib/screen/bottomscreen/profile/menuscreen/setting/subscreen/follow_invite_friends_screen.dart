import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instragramclone/constants/color.dart';
import 'package:instragramclone/constants/images.dart';
import 'package:instragramclone/constants/textstyle.dart';
import 'package:instragramclone/screen/bottomscreen/profile/profileutiles/profile_utiles.dart';

class FollowInviteFriendsScreen extends StatelessWidget {
  const FollowInviteFriendsScreen({Key? key}) : super(key: key);

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
          "Follow & invite friends",
          style: TextStyleClass.sourceSansProBold(
            size: 22.0,
            color: ColorConst.black2A,
          ),
        ),
      ),
      body: Column(
        children: [
          commonListTileSetting(
            title: "Invite friends by email",
            image: SvgPicture.asset(
              ImageCons.messageBox,
            ),
          ),
          commonListTileSetting(
            title: "Invite friends by SMS",
            image: SvgPicture.asset(
              ImageCons.chatIcon,
            ),
          ),
          commonListTileSetting(
            title: "Invite friends by...",
            image: Icon(
              Icons.share,
              color: ColorConst.appColor,
            ),
          ),
        ],
      ),
    );
  }
}
