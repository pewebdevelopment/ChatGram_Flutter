import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instragramclone/constants/color.dart';
import 'package:instragramclone/constants/images.dart';
import 'package:instragramclone/constants/textstyle.dart';
import 'package:instragramclone/screen/bottomscreen/addpost/addsubscreen/subcontroller/camera_controller.dart';
import 'package:instragramclone/screen/bottomscreen/bottomnavigation/bottom_navigation_screen.dart';

class NewPostScreen2 extends StatelessWidget {
  final CameraSettingController cameraSettingController =
      Get.put(CameraSettingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.white,
      appBar: AppBar(
        backgroundColor: ColorConst.white,
        automaticallyImplyLeading: true,
        foregroundColor: ColorConst.black2A,
        centerTitle: true,
        title: Text(
          "New post",
          style: TextStyleClass.sourceSansProSemiBold(size: 22.0),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.offAll(
                () => BottomNavigationScreen(),
              );
            },
            icon: Icon(
              Icons.arrow_forward,
              color: ColorConst.appColor,
            ),
          )
        ],
        elevation: 1,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(right: 20, left: 20, top: 20, bottom: 15),
            child: Row(
              children: [
                Image(
                  image: AssetImage(ImageCons.picPost2),
                  height: 50,
                  width: 50,
                ),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 15),
                      border: InputBorder.none,
                      hintText: "Write a caption..",
                      hintStyle: TextStyleClass.sourceSansProRegular(
                        color: ColorConst.grey949,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: 1,
            color: ColorConst.greyE2,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, bottom: 20),
            child: Text(
              "Tag people",
              style: TextStyleClass.sourceSansProRegular(size: 16.0),
            ),
          ),
          Divider(
            height: 1,
            color: ColorConst.greyE2,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, bottom: 20),
            child: Text(
              "Add location",
              style: TextStyleClass.sourceSansProRegular(size: 16.0),
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20, bottom: 20),
                padding: EdgeInsets.only(right: 18, left: 18),
                height: 30,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: ColorConst.greyF0,
                ),
                child: Text(
                  "The City of  Sun Surat",
                  style: TextStyleClass.sourceSansProRegular(),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, bottom: 20),
                padding: EdgeInsets.only(right: 18, left: 18),
                height: 30,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: ColorConst.greyF0,
                ),
                child: Text(
                  "Surat",
                  style: TextStyleClass.sourceSansProRegular(),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, bottom: 20),
                padding: EdgeInsets.only(right: 18, left: 18),
                height: 30,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: ColorConst.greyF0,
                ),
                child: Text(
                  "Love is Life",
                  style: TextStyleClass.sourceSansProRegular(),
                ),
              ),
            ],
          ),
          Divider(
            height: 1,
            color: ColorConst.greyE2,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, bottom: 20),
            child: Text(
              "Add music",
              style: TextStyleClass.sourceSansProRegular(size: 16.0),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, bottom: 20),
            height: 30,
            alignment: Alignment.center,
            width: Get.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(7),
                bottomLeft: Radius.circular(7),
              ),
              color: ColorConst.greyF0,
            ),
            child: Text(
              "Samar Singh, Shilpi Raj - Lagawadi Gharawa Mein AC Raja Ji",
              style: TextStyleClass.sourceSansProRegular(),
            ),
          ),
          Divider(
            height: 1,
            color: ColorConst.greyE2,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, bottom: 20),
            child: Text(
              "Also post to",
              style: TextStyleClass.sourceSansProRegular(size: 16.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Facebook",
                  style: TextStyleClass.sourceSansProRegular(size: 16.0),
                ),
                Obx(
                  () => Transform.scale(
                    scale: 0.6,
                    child: CupertinoSwitch(
                      value: cameraSettingController.isActive.value,
                      onChanged: (val) {
                        cameraSettingController.isActive.value = val;
                      },
                      activeColor: ColorConst.appColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Twitter",
                  style: TextStyleClass.sourceSansProRegular(size: 16.0),
                ),
                Obx(
                  () => Transform.scale(
                    scale: 0.6,
                    child: CupertinoSwitch(
                      value: cameraSettingController.isActive1.value,
                      onChanged: (val) {
                        cameraSettingController.isActive1.value = val;
                      },
                      activeColor: ColorConst.appColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Tumblr",
                  style: TextStyleClass.sourceSansProRegular(size: 16.0),
                ),
                Obx(
                  () => Transform.scale(
                    scale: 0.6,
                    child: CupertinoSwitch(
                      value: cameraSettingController.isActive2.value,
                      onChanged: (val) {
                        cameraSettingController.isActive2.value = val;
                      },
                      activeColor: ColorConst.appColor,
                    ),
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
