import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instragramclone/constants/color.dart';
import 'package:instragramclone/constants/textstyle.dart';
import 'package:instragramclone/screen/bottomscreen/addpost/addsubscreen/subcontroller/camera_controller.dart';

class CameraSettingScreen extends StatelessWidget {
  final CameraSettingController cameraSettingController =
      Get.put(CameraSettingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.white,
      appBar: AppBar(
        backgroundColor: ColorConst.white,
        automaticallyImplyLeading: false,
        title: Text(
          "Camera settings",
          style: TextStyleClass.sourceSansProSemiBold(size: 22.0),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              "Done",
              style: TextStyleClass.sourceSansProRegular(
                size: 18.0,
                color: ColorConst.appColor,
              ),
            ),
          ),
        ],
        elevation: 1,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Text(
                "Controls",
                style: TextStyleClass.sourceSansProRegular(size: 16.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Always start on front camera",
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
              padding: const EdgeInsets.only(top: 25),
              child: Text(
                "Camera tools",
                style: TextStyleClass.sourceSansProRegular(size: 16.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                "Choose which side of the screen you want your camera toolbar to be on.",
                style: TextStyleClass.sourceSansProRegular(
                  size: 12.0,
                  color: ColorConst.grey949,
                ),
              ),
            ),
            Obx(
              () => RadioListTile(
                contentPadding: EdgeInsets.zero,
                title: Text("Left side"),
                value: "left",
                groupValue: cameraSettingController.gender.value,
                activeColor: ColorConst.appColor,
                onChanged: (value) {
                  cameraSettingController.gender.value = value.toString();
                },
              ),
            ),
            Obx(
              () => RadioListTile(
                contentPadding: EdgeInsets.zero,
                title: Text("Right side"),
                value: "right",
                activeColor: ColorConst.appColor,
                groupValue: cameraSettingController.gender.value,
                onChanged: (value) {
                  cameraSettingController.gender.value = value.toString();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
