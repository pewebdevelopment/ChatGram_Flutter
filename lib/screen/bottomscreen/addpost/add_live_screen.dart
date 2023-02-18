import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instragramclone/constants/color.dart';
import 'package:instragramclone/constants/images.dart';
import 'package:instragramclone/screen/bottomscreen/addpost/addpostutiles/add_utiles.dart';
import 'package:instragramclone/screen/bottomscreen/addpost/addsubscreen/camera_setting_screen.dart';

class AddLiveScreen extends StatelessWidget {
  const AddLiveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.black,
      body: Padding(
        padding: const EdgeInsets.only(top: 56),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: ColorConst.white.withOpacity(0.12),
                      ),
                      child: Icon(
                        Icons.settings,
                        color: ColorConst.white,
                      ),
                    ),
                    onTap: () {
                      Get.to(CameraSettingScreen());
                    },
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: ColorConst.white.withOpacity(0.12),
                    ),
                    child: Icon(
                      Icons.clear,
                      color: ColorConst.white,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Column(
                children: [
                  commonRow(title: "Title", image: ImageCons.textAlign),
                  commonRow(title: "Schedule", image: ImageCons.calendar),
                  commonRow(title: "Audience", image: ImageCons.eye),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 150),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 3,
                      color: ColorConst.white,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: ColorConst.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
