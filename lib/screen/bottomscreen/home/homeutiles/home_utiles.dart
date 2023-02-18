import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:instragramclone/constants/color.dart';
import 'package:instragramclone/constants/images.dart';
import 'package:instragramclone/constants/textstyle.dart';
import 'package:instragramclone/screen/bottomscreen/home/datamodel/data_model.dart';
import 'package:instragramclone/screen/bottomscreen/home/subscreen/activity/activity_screen.dart';
import 'package:instragramclone/screen/bottomscreen/home/subscreen/chat/chat_screen.dart';
import 'package:instragramclone/screen/bottomscreen/home/subscreen/search/search_screen.dart';
import 'package:instragramclone/screen/bottomscreen/home/subscreen/storydir/story_screen.dart';
import 'package:instragramclone/screen/bottomscreen/profile/menuscreen/qrcode/qr_code_screen.dart';
import 'package:instragramclone/screen/bottomscreen/reeels/reelutiles/reel_utiles.dart';

homeAppBar() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Chatgram",
          style: TextStyleClass.capriolaRegular(size: 28.0),
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {
                print("fejnvjbvbkt");
                Get.to(
                  () => SearchScreen(),
                );
              },
              icon: Icon(
                Icons.search,
                color: ColorConst.black2A,
                size: 30,
              ),
            ),
            IconButton(
              onPressed: () {
                Get.to(() => ActivityScreen());
              },
              icon: Icon(
                Icons.favorite_border,
                color: ColorConst.black2A,
                size: 30,
              ),
            ),
            IconButton(
              onPressed: () {
                Get.to(() => ChatScreen());
              },
              icon: Stack(
                alignment: Alignment.topRight,
                children: [
                  SvgPicture.asset(ImageCons.messageHome),
                  Container(
                    alignment: Alignment.center,
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: ColorConst.appColor,
                    ),
                    child: Text(
                      "2",
                      style: TextStyleClass.sourceSansProBold(
                          size: 9.0, color: ColorConst.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

homeAddStoryListView() {
  return Container(
    height: 81,
    width: Get.width,
    alignment: Alignment.center,
    margin: EdgeInsets.only(top: 19, bottom: 19),
    child: ListView.builder(
      padding: EdgeInsets.only(left: 20),
      itemCount: homeAddStoryDataList.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(right: 20),
          child: InkWell(
            onTap: () {
              Get.to(() => StoryScreen());
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  alignment: index == 0
                      ? Alignment.bottomRight
                      : Alignment.bottomCenter,
                  children: [
                    Container(
                      height: 62,
                      width: 62,
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: ColorConst.appColor,
                          width: 2,
                        ),
                      ),
                      child: Image(
                        image: AssetImage(
                            homeAddStoryDataList[index].image.toString()),
                      ),
                    ),
                    index == 0
                        ? Image(
                            image: AssetImage(ImageCons.addHome),
                            height: 22,
                          )
                        : index == 1
                            ? Positioned(
                                bottom: -5,
                                child: Image(
                                  image: AssetImage(ImageCons.liveHome),
                                  height: 22,
                                ),
                              )
                            : SizedBox.shrink(),
                  ],
                ),
                Text(
                  homeAddStoryDataList[index].title.toString(),
                  style: TextStyleClass.sourceSansProBold(
                      size: 12.0, color: ColorConst.black2A),
                ),
              ],
            ),
          ),
        );
      },
    ),
  );
}

homePostView() {
  return ListView.builder(
    itemCount: homePostList.length,
    physics: NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    padding: EdgeInsets.zero,
    itemBuilder: (context, index) {
      var item = homePostList[index];
      if (index == 2) {
        return Column(
          children: [
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
                  return Container(
                    width: 155,
                    margin: EdgeInsets.only(right: 15, bottom: 20),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
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
                  );
                },
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 20),
              ),
            ),
            Divider(
              height: 1,
              color: ColorConst.greyE2,
            ),
          ],
        );
      }

      if (index == 5) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 20, left: 20, right: 20, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Suggested Reels",
                    style: TextStyleClass.sourceSansProSemiBold(
                      color: ColorConst.black2A,
                    ),
                  ),
                  Text(
                    "Watch All",
                    style: TextStyleClass.sourceSansProSemiBold(
                      size: 16.0,
                      color: ColorConst.appColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 250,
              child: ListView.builder(
                padding: EdgeInsets.only(left: 20),
                itemCount: homeReelList.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  var item = homeReelList[index];
                  return Container(
                    width: 155,
                    margin: EdgeInsets.only(right: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: AssetImage(
                          item.image.toString(),
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        );
      }
      return SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 13, left: 20, right: 20, bottom: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(item.image.toString()),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  item.title.toString(),
                                  style: TextStyleClass.sourceSansProSemiBold(
                                      size: 12.0),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                item.isShow == true
                                    ? Image(
                                        height: 14,
                                        image: AssetImage(
                                          ImageCons.celebs,
                                        ),
                                      )
                                    : SizedBox.shrink(),
                              ],
                            ),
                            Text(
                              item.subtitle.toString(),
                              style: TextStyleClass.sourceSansProSemiBold(
                                size: 10.0,
                                color: ColorConst.grey949,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: item.isSaved == true
                            ? Icon(
                                CupertinoIcons.bookmark_fill,
                                color: ColorConst.appColor,
                              )
                            : Icon(
                                CupertinoIcons.bookmark,
                              ),
                      ),
                      IconButton(
                        onPressed: () {
                          modalBottomSheetHome(context);
                        },
                        icon: Icon(
                          Icons.more_vert,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            (item.bio1!.isNotEmpty && item.bio2!.isNotEmpty)
                ? Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 24, bottom: 10),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: item.bio1.toString(),
                            style: TextStyleClass.sourceSansProRegular(
                              color: ColorConst.black2A,
                            ),
                          ),
                          TextSpan(
                            text: item.bio2.toString(),
                            style: TextStyleClass.sourceSansProSemiBold(
                              color: ColorConst.appColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                : SizedBox.shrink(),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 12),
              child: Text(
                item.time.toString(),
                style: TextStyleClass.sourceSansProRegular(
                  color: ColorConst.grey949,
                  size: 10.0,
                ),
              ),
            ),
            Container(
              height: 375,
              width: Get.width,
              margin: EdgeInsets.only(bottom: 16.5),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    item.postPic.toString(),
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      item.isLike == true
                          ? Icon(
                              Icons.favorite,
                              color: ColorConst.appColor,
                            )
                          : Icon(
                              Icons.favorite_border,
                              color: ColorConst.black2A,
                            ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        "Like",
                        style: TextStyleClass.sourceSansProRegular(
                          color: ColorConst.black2A,
                        ),
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        CupertinoIcons.chat_bubble,
                        color: ColorConst.black2A,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        "Comment",
                        style: TextStyleClass.sourceSansProRegular(
                          color: ColorConst.black2A,
                        ),
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      SvgPicture.asset(ImageCons.shareIcon),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        "Share",
                        style: TextStyleClass.sourceSansProRegular(
                          color: ColorConst.black2A,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20, bottom: 17),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(ImageCons.pic1),
                                ),
                              ),
                            ),
                            Positioned(
                              left: -13,
                              child: Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(ImageCons.pic2),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: -25,
                              child: Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(ImageCons.pic4),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        item.likeMsg.toString(),
                        style: TextStyleClass.sourceSansProSemiBold(
                            color: ColorConst.black2A, size: 12.0),
                      ),
                    ],
                  ),
                  Text(
                    item.comments.toString(),
                    style: TextStyleClass.sourceSansProSemiBold(
                        color: ColorConst.black2A, size: 12.0),
                  ),
                ],
              ),
            ),
            Divider(
              height: 1,
              color: ColorConst.greyE2,
            ),
          ],
        ),
      );
    },
  );
}

///menu screen
modalBottomSheetHome(BuildContext context) {
  showModalBottomSheet(
    backgroundColor: ColorConst.white,
    context: context,
    builder: (builder) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppBar(
            backgroundColor: ColorConst.white,
            elevation: 0,
            centerTitle: true,
            foregroundColor: ColorConst.black,
            title: Text(
              "More",
              style: TextStyleClass.sourceSansProBold(
                color: ColorConst.black2A,
                size: 22.0,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    share();
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          color: ColorConst.white,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: ColorConst.greyE9,
                            width: 0.75,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: SvgPicture.asset(ImageCons.share),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Share",
                        style: TextStyleClass.sourceSansProSemiBold(),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        color: ColorConst.white,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: ColorConst.greyE9,
                          width: 0.75,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: SvgPicture.asset(ImageCons.link),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Link",
                      style: TextStyleClass.sourceSansProSemiBold(),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        color: ColorConst.white,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: ColorConst.greyE9,
                          width: 0.75,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: SvgPicture.asset(ImageCons.save),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Save",
                      style: TextStyleClass.sourceSansProSemiBold(),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    Get.to(() => QrCodeScreen());
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          color: ColorConst.white,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: ColorConst.greyE9,
                            width: 0.75,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: SvgPicture.asset(ImageCons.qrcode),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "QR Code",
                        style: TextStyleClass.sourceSansProSemiBold(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Divider(
            height: 1,
          ),
          SizedBox(
            height: 23,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Text(
                  "Add to Favourites",
                  style: TextStyleClass.sourceSansProSemiBold(
                    color: ColorConst.black2A,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Text(
                  "About This Account",
                  style: TextStyleClass.sourceSansProSemiBold(
                    color: ColorConst.black2A,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Text(
                  "Hide",
                  style: TextStyleClass.sourceSansProSemiBold(
                    color: ColorConst.black2A,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Text(
                  "Unfollow",
                  style: TextStyleClass.sourceSansProSemiBold(
                    color: ColorConst.black2A,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
        ],
      );
    },
  );
}
