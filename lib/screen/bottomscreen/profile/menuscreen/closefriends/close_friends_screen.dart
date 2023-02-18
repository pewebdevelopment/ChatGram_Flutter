import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instragramclone/constants/color.dart';
import 'package:instragramclone/constants/images.dart';
import 'package:instragramclone/constants/textstyle.dart';
import 'package:instragramclone/screen/bottomscreen/home/subscreen/activity/activityutiles/activity_data.dart';
import 'package:instragramclone/utiles/utiles.dart';

class CloseFriendsScreen extends StatefulWidget {
  const CloseFriendsScreen({Key? key}) : super(key: key);

  @override
  State<CloseFriendsScreen> createState() => _CloseFriendsScreenState();
}

class _CloseFriendsScreenState extends State<CloseFriendsScreen> {
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
          "Close friends",
          style: TextStyleClass.sourceSansProBold(
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
              padding: const EdgeInsets.only(
                  top: 20, left: 41, right: 41, bottom: 25),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text:
                          "We don’t send notifications when you edit your close friends list.",
                      style: TextStyleClass.sourceSansProRegular(
                        color: ColorConst.grey949,
                      ),
                    ),
                    TextSpan(
                      text: " How it works",
                      style: TextStyleClass.sourceSansProSemiBold(
                        color: ColorConst.black2A,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20, bottom: 20),
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
            Divider(
              height: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 20),
              child: Text(
                "Favorites",
                style: TextStyleClass.sourceSansProSemiBold(
                  size: 18.0,
                ),
              ),
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.only(bottom: 20),
              shrinkWrap: true,
              itemCount: discoverActivityList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
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
                      InkWell(
                        onTap: () {
                          setState(() {
                            discoverActivityList[index].isSelected =
                                !discoverActivityList[index].isSelected!;
                            print(
                                "bvfbfhbjjgjetjhgrjr   ${discoverActivityList[index].isSelected}    ");
                          });
                        },
                        child: Container(
                          height: 24,
                          width: 24,
                          padding: EdgeInsets.all(5.18),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color:
                                  discoverActivityList[index].isSelected == true
                                      ? ColorConst.appColor
                                      : ColorConst.grey949,
                              width: 1.5,
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              color:
                                  discoverActivityList[index].isSelected == true
                                      ? ColorConst.appColor
                                      : Colors.transparent,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            Container(
              height: 100,
              width: Get.width,
              padding:
                  EdgeInsets.only(left: 37, right: 37, top: 15, bottom: 35),
              decoration: BoxDecoration(
                color: ColorConst.white,
                boxShadow: [
                  BoxShadow(
                    color: ColorConst.black.withOpacity(0.08),
                    blurRadius: 16,
                    offset: Offset(0, -4),
                  ),
                ],
              ),
              child: CommonButton(
                title: "Add Friends",
                fontSize: 16.0,
                onPresss: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
