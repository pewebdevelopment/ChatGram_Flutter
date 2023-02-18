import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instragramclone/constants/color.dart';
import 'package:instragramclone/constants/images.dart';
import 'package:instragramclone/constants/textstyle.dart';
import 'package:instragramclone/screen/bottomscreen/profile/menuscreen/save/audio/save_audio_screen.dart';
import 'package:instragramclone/screen/bottomscreen/profile/menuscreen/save/post/save_post_screen.dart';

class SaveScreen extends StatelessWidget {
  const SaveScreen({Key? key}) : super(key: key);

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
          "Saved",
          style: TextStyleClass.sourceSansProBold(
            size: 22.0,
            color: ColorConst.black2A,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            Get.to(() => SavePostScreen());
                          },
                          child: Container(
                            height: 67,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(ImageCons.picPost1),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 2),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            Get.to(() => SavePostScreen());
                          },
                          child: Container(
                            height: 67,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(ImageCons.picPost1),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(8),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            Get.to(() => SavePostScreen());
                          },
                          child: Container(
                            height: 67,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(ImageCons.picPost1),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(8),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 2),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            Get.to(() => SavePostScreen());
                          },
                          child: Container(
                            height: 67,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(ImageCons.picPost1),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(8),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "All Posts",
                    style: TextStyleClass.sourceSansProSemiBold(
                      color: ColorConst.black2A,
                      size: 14.0,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 35,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            Get.to(() => SaveAudioScreen());
                          },
                          child: Container(
                            height: 67,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(ImageCons.picPost1),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 2),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            Get.to(() => SaveAudioScreen());
                          },
                          child: Container(
                            height: 67,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(ImageCons.picPost1),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(8),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            Get.to(() => SaveAudioScreen());
                          },
                          child: Container(
                            height: 67,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(ImageCons.picPost1),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(8),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 2),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            Get.to(() => SaveAudioScreen());
                          },
                          child: Container(
                            height: 67,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(ImageCons.picPost1),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(8),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Audio",
                    style: TextStyleClass.sourceSansProSemiBold(
                      color: ColorConst.black2A,
                      size: 14.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
