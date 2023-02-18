import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instragramclone/constants/color.dart';
import 'package:instragramclone/constants/textstyle.dart';
import 'package:instragramclone/screen/bottomscreen/profile/menuscreen/setting/subcontroller/set_theme_controller.dart';

class SetThemeScreen extends StatelessWidget {
  final SetThemeController setThemeController = Get.put(SetThemeController());

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
          "Set theme",
          style: TextStyleClass.sourceSansProBold(
            size: 22.0,
            color: ColorConst.black2A,
          ),
        ),
      ),
      body: Column(
        children: [
          Obx(
            () => RadioListTile(
              contentPadding: EdgeInsets.zero,
              title: Text("Light"),
              value: "right",
              groupValue: setThemeController.gender.value,
              activeColor: ColorConst.appColor,
              onChanged: (value) {
                setThemeController.gender.value = value.toString();
              },
            ),
          ),
          Obx(
            () => RadioListTile(
              contentPadding: EdgeInsets.zero,
              title: Text("Dark"),
              value: "dark",
              activeColor: ColorConst.appColor,
              groupValue: setThemeController.gender.value,
              onChanged: (value) {
                setThemeController.gender.value = value.toString();
              },
            ),
          ),
          Obx(
            () => RadioListTile(
              contentPadding: EdgeInsets.zero,
              title: Text("System Default"),
              value: "default",
              activeColor: ColorConst.appColor,
              groupValue: setThemeController.gender.value,
              onChanged: (value) {
                setThemeController.gender.value = value.toString();
              },
            ),
          ),
        ],
      ),
    );
  }
}
