import 'package:flutter/material.dart';
import 'package:instragramclone/constants/color.dart';
import 'package:instragramclone/constants/images.dart';
import 'package:instragramclone/constants/textstyle.dart';
import 'package:instragramclone/screen/bottomscreen/home/subscreen/activity/activityutiles/activity_data.dart';

class DiscoverActivityScreen extends StatelessWidget {
  const DiscoverActivityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.white,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        foregroundColor: ColorConst.black2A,
        backgroundColor: ColorConst.white,
        centerTitle: true,
        title: Text(
          "Discover People",
          style: TextStyleClass.sourceSansProSemiBold(size: 22.0),
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          Divider(
            height: 1,
            color: ColorConst.greyE2,
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.only(bottom: 20),
              shrinkWrap: true,
              itemCount: discoverActivityList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 16, right: 20, left: 20),
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
                      MaterialButton(
                        onPressed: () {},
                        height: 30,
                        minWidth: 80,
                        color: ColorConst.appColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        elevation: 0,
                        child: Text(
                          "Follow",
                          style: TextStyleClass.sourceSansProRegular(
                            color: ColorConst.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
