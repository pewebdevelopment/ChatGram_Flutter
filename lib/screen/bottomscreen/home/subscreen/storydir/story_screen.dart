import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instragramclone/constants/color.dart';
import 'package:instragramclone/constants/images.dart';
import 'package:instragramclone/constants/textstyle.dart';
import 'package:instragramclone/screen/bottomscreen/home/subscreen/storydir/storyutiles/story_utiles.dart';

class StoryScreen extends StatelessWidget {
  const StoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: Get.height,
            width: Get.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ImageCons.picPost6),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 56, left: 20, right: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 2,
                          color: ColorConst.white,
                        ),
                      ),
                      SizedBox(
                        width: 5.4,
                      ),
                      Expanded(
                        child: Container(
                          height: 2,
                          color: ColorConst.grey8F,
                        ),
                      ),
                      SizedBox(
                        width: 5.4,
                      ),
                      Expanded(
                        child: Container(
                          height: 2,
                          color: ColorConst.grey8F,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 55,
                              width: 55,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(ImageCons.pic4),
                                ),
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
                                        "Jerome Bell",
                                        style: TextStyleClass.sourceSansProBold(
                                          color: ColorConst.white,
                                        ),
                                      ),
                                      Text(
                                        "  \u2022 3h",
                                        style:
                                            TextStyleClass.sourceSansProRegular(
                                          color: ColorConst.white,
                                          size: 12.0,
                                        ),
                                      )
                                    ],
                                  ),
                                  Text(
                                    "From create made",
                                    style: TextStyleClass.sourceSansProRegular(
                                      color: ColorConst.white,
                                      size: 14.0,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: Icon(
                            Icons.clear,
                            color: ColorConst.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          ///bottom container
          bottomContainer(),
        ],
      ),
    );
  }
}
