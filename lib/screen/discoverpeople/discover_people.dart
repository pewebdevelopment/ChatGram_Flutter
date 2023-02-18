import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instragramclone/constants/color.dart';
import 'package:instragramclone/constants/images.dart';
import 'package:instragramclone/constants/textstyle.dart';
import 'package:instragramclone/screen/bottomscreen/bottomnavigation/bottom_navigation_screen.dart';
import 'package:instragramclone/screen/discoverpeople/model/data_model.dart';

class DiscoverPeopleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 56,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Discover People",
                  style: TextStyleClass.sourceSansProSemiBold(size: 22.0),
                ),
                IconButton(
                  onPressed: () {
                    Get.to(() => BottomNavigationScreen());
                  },
                  icon: Icon(
                    Icons.arrow_forward,
                    color: ColorConst.appColor,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              height: 1,
              color: ColorConst.greyE2,
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                itemCount: discoverList.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 16),
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
                                    /*  image: DecorationImage(
                                      image: AssetImage(
                                        discoverList[index].image.toString(),
                                      ),
                                      fit: BoxFit.fill,
                                    ),*/
                                    border: Border.all(
                                      color: index == 0
                                          ? ColorConst.appColor
                                          : index == 1
                                              ? ColorConst.greyEB
                                              : Colors.transparent,
                                    ),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(
                                        (index == 0 || index == 1) ? 8.0 : 0.0),
                                    child: Image(
                                      image: AssetImage(
                                        discoverList[index].image.toString(),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            discoverList[index]
                                                .title
                                                .toString(),
                                            style: TextStyleClass
                                                .sourceSansProSemiBold(
                                                    size: 14.0),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          discoverList[index].isShow == true
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
                                        discoverList[index].subTitle.toString(),
                                        style:
                                            TextStyleClass.sourceSansProRegular(
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
                                index == 1 ? "Connect" : "Find",
                                style: TextStyleClass.sourceSansProRegular(
                                  color: ColorConst.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      index == 1
                          ? Padding(
                              padding: const EdgeInsets.only(top: 16),
                              child: Divider(
                                height: 1,
                                color: ColorConst.greyE2,
                              ),
                            )
                          : Container(),
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
