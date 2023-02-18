import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instragramclone/constants/color.dart';
import 'package:instragramclone/constants/images.dart';
import 'package:instragramclone/constants/textstyle.dart';
import 'package:instragramclone/screen/bottomscreen/home/subscreen/activity/activityutiles/activity_data.dart';

///followers
class FollowersScreen extends StatelessWidget {
  const FollowersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              cursorColor: ColorConst.appColor,
              // controller: controller!.searchTextController,
              decoration: InputDecoration(
                filled: true,
                contentPadding: EdgeInsets.only(left: 20, top: 16, bottom: 16),
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
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                "Categories",
                style: TextStyleClass.sourceSansProSemiBold(
                    color: ColorConst.black2A, size: 16.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 55,
                        width: 55,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              ImageCons.pic3,
                            ),
                            fit: BoxFit.fill,
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          height: 55,
                          width: 55,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                ImageCons.pic1,
                              ),
                              fit: BoxFit.fill,
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Accounts you don’t follow back",
                          style:
                              TextStyleClass.sourceSansProSemiBold(size: 14.0),
                        ),
                        Text(
                          "Eleanor 🔥 and 106 others",
                          style: TextStyleClass.sourceSansProRegular(
                            size: 12.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 55,
                        width: 55,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              ImageCons.pic2,
                            ),
                            fit: BoxFit.fill,
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          height: 55,
                          width: 55,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                ImageCons.pic4,
                              ),
                              fit: BoxFit.fill,
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Least interacted with",
                          style:
                              TextStyleClass.sourceSansProSemiBold(size: 14.0),
                        ),
                        Text(
                          "DarleneOfficial. and 11 others",
                          style: TextStyleClass.sourceSansProRegular(
                            size: 12.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Text(
                "All followers",
                style: TextStyleClass.sourceSansProSemiBold(
                    color: ColorConst.black2A, size: 16.0),
              ),
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.only(bottom: 20),
              shrinkWrap: true,
              itemCount: discoverActivityList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 55,
                            width: 55,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  discoverActivityList[index].image.toString(),
                                ),
                                fit: BoxFit.fill,
                              ),
                              shape: BoxShape.circle,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Row(
                              children: [
                                Text(
                                  discoverActivityList[index].title.toString(),
                                  style: TextStyleClass.sourceSansProSemiBold(
                                      size: 14.0),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "  \u2022  Follow",
                                  style: TextStyleClass.sourceSansProSemiBold(
                                    size: 14.0,
                                    color: ColorConst.appColor,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      MaterialButton(
                        onPressed: () {},
                        height: 30,
                        minWidth: 80,
                        color: ColorConst.greyE7,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        elevation: 0,
                        child: Text(
                          "Remove",
                          style: TextStyleClass.sourceSansProSemiBold(
                            color: ColorConst.black2A,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

///following
class FollowingScreen extends StatelessWidget {
  const FollowingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              cursorColor: ColorConst.appColor,
              // controller: controller!.searchTextController,
              decoration: InputDecoration(
                filled: true,
                contentPadding: EdgeInsets.only(left: 20, top: 16, bottom: 16),
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
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                "Categories",
                style: TextStyleClass.sourceSansProSemiBold(
                    color: ColorConst.black2A, size: 16.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 55,
                        width: 55,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              ImageCons.pic3,
                            ),
                            fit: BoxFit.fill,
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          height: 55,
                          width: 55,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                ImageCons.pic1,
                              ),
                              fit: BoxFit.fill,
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Accounts you don’t follow back",
                          style:
                              TextStyleClass.sourceSansProSemiBold(size: 14.0),
                        ),
                        Text(
                          "Eleanor 🔥 and 106 others",
                          style: TextStyleClass.sourceSansProRegular(
                            size: 12.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 55,
                        width: 55,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              ImageCons.pic2,
                            ),
                            fit: BoxFit.fill,
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          height: 55,
                          width: 55,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                ImageCons.pic4,
                              ),
                              fit: BoxFit.fill,
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Least interacted with",
                          style:
                              TextStyleClass.sourceSansProSemiBold(size: 14.0),
                        ),
                        Text(
                          "DarleneOfficial. and 11 others",
                          style: TextStyleClass.sourceSansProRegular(
                            size: 12.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Sorted by ",
                          style: TextStyleClass.sourceSansProRegular(
                            color: ColorConst.black2A,
                            size: 16.0,
                          ),
                        ),
                        TextSpan(
                          text: "Default",
                          style: TextStyleClass.sourceSansProSemiBold(
                            color: ColorConst.black2A,
                            size: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SvgPicture.asset(ImageCons.arrowsDownUp),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 55,
                    width: 55,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(color: ColorConst.appColor),
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset(
                      ImageCons.hashTagIcon,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hashtag’s",
                          style:
                              TextStyleClass.sourceSansProSemiBold(size: 14.0),
                        ),
                        Text(
                          "#uiux, #uidesign, #ui, #car, #carlover...",
                          style: TextStyleClass.sourceSansProRegular(
                            size: 12.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.only(bottom: 20),
              shrinkWrap: true,
              itemCount: discoverActivityList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 55,
                            width: 55,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  discoverActivityList[index].image.toString(),
                                ),
                                fit: BoxFit.fill,
                              ),
                              shape: BoxShape.circle,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      discoverActivityList[index]
                                          .title
                                          .toString(),
                                      style:
                                          TextStyleClass.sourceSansProSemiBold(
                                              size: 14.0),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    discoverActivityList[index].isShow == true
                                        ? Image(
                                            height: 14,
                                            image: AssetImage(
                                              ImageCons.celebs,
                                            ),
                                          )
                                        : Container(),
                                  ],
                                ),
                                Text(
                                  discoverActivityList[index]
                                      .subTitle
                                      .toString(),
                                  style: TextStyleClass.sourceSansProRegular(
                                    size: 12.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          MaterialButton(
                            onPressed: () {},
                            height: 30,
                            minWidth: 80,
                            color: ColorConst.greyE7,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            elevation: 0,
                            child: Text(
                              "Following",
                              style: TextStyleClass.sourceSansProSemiBold(
                                color: ColorConst.black2A,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 18,
                          ),
                          Icon(
                            Icons.more_vert,
                            color: ColorConst.black2A,
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
