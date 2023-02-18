import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instragramclone/constants/color.dart';
import 'package:instragramclone/constants/textstyle.dart';
import 'package:instragramclone/screen/bottomscreen/profile/menuscreen/setting/subcontroller/notification_controller.dart';

class NotificationScreen extends StatelessWidget {
  final NotificationController notificationController =
      Get.put(NotificationController());

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
          "Notification",
          style: TextStyleClass.sourceSansProSemiBold(
            size: 22.0,
            color: ColorConst.black2A,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: notificationList.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          if (index == 8) {
            return Divider(
              height: 1,
            );
          }
          return ListTile(
            title: Text(
              notificationList[index].toString(),
              style: TextStyleClass.sourceSansProRegular(size: 16.0),
            ),
            trailing: index == 1
                ? Obx(
                    () => CupertinoSwitch(
                      value: notificationController.isActive.value,
                      onChanged: (val) {
                        notificationController.isActive.value = val;
                      },
                      activeColor: ColorConst.appColor,
                    ),
                  )
                : SizedBox.shrink(),
          );
        },
      ),
    );
  }
}
