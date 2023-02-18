import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:instragramclone/constants/color.dart';
import 'package:instragramclone/constants/images.dart';
import 'package:instragramclone/constants/textstyle.dart';
import 'package:instragramclone/screen/bottomscreen/home/subscreen/storydir/comments_screen.dart';
import 'package:instragramclone/screen/bottomscreen/home/subscreen/storydir/share_screen.dart';
import 'package:instragramclone/screen/bottomscreen/reeels/reelutiles/reel_utiles.dart';

class ReelsScreen extends StatelessWidget {
  const ReelsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.black,
      appBar: AppBar(
        backgroundColor: ColorConst.black,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          "Reels",
          style: TextStyleClass.sourceSansProBold(
            color: ColorConst.white,
            size: 22.0,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.camera_alt_outlined,
              color: ColorConst.white,
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 100, left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            ImageCons.pic4,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Annette 🖤",
                      style: TextStyleClass.sourceSansProSemiBold(
                        color: ColorConst.white,
                        size: 18.0,
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    MaterialButton(
                      height: 25,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: BorderSide(
                          color: ColorConst.white,
                        ),
                      ),
                      child: Text(
                        "Follow",
                        style: TextStyleClass.sourceSansProSemiBold(
                          color: ColorConst.white,
                          size: 13.0,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 88, bottom: 15),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "And the boredom award goes to…",
                          style: TextStyleClass.sourceSansProRegular(
                            color: ColorConst.white,
                            size: 14.0,
                          ),
                        ),
                        TextSpan(
                          text: " #repost #cute #amazing #girlstyle #sweet..",
                          style: TextStyleClass.sourceSansProRegular(
                            color: ColorConst.appColor,
                          ),
                        ),
                        TextSpan(
                          text: " Read more",
                          style: TextStyleClass.sourceSansProSemiBold(
                            color: ColorConst.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    SvgPicture.asset(ImageCons.equalizerIcon),
                    SizedBox(width: 5),
                    Text(
                      "Prem Dhillon - OG",
                      style: TextStyleClass.sourceSansProRegular(
                        color: ColorConst.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 100,
            right: 20,
            child: Column(
              children: [
                Icon(
                  Icons.favorite_border,
                  color: ColorConst.white,
                ),
                Text(
                  "101k",
                  style: TextStyleClass.sourceSansProRegular(
                    color: ColorConst.white,
                    size: 18.0,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Get.to(
                      () => CommentsScreen(),
                    );
                  },
                  child: Icon(
                    CupertinoIcons.chat_bubble,
                    color: ColorConst.white,
                  ),
                ),
                Text(
                  "277",
                  style: TextStyleClass.sourceSansProRegular(
                    color: ColorConst.white,
                    size: 18.0,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Get.to(
                      () => ShareScreen(),
                    );
                  },
                  child: SvgPicture.asset(
                    ImageCons.shareIcon,
                    color: ColorConst.white,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    modalBottomSheetMenu(context);
                  },
                  child: Icon(
                    Icons.more_vert,
                    color: ColorConst.white,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    border: Border.all(color: ColorConst.white, width: 2),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 16,
                        color: ColorConst.black,
                        spreadRadius: 0,
                      ),
                    ],
                    image: DecorationImage(
                      image: AssetImage(ImageCons.reelPic),
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
