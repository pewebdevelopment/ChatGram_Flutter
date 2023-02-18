import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final List<Tab> myTabsProfile = [
    Tab(
      icon: Icon(Icons.grid_view),
    ),
    Tab(
      icon: Icon(CupertinoIcons.tags),
    ),
  ];
  late TabController controllerProfile;

  @override
  void onInit() {
    super.onInit();

    controllerProfile =
        TabController(vsync: this, length: myTabsProfile.length);
  }

  @override
  void onClose() {
    controllerProfile.dispose();
    super.onClose();
  }
}
