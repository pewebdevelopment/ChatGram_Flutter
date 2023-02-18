import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FollowersController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final List<Tab> myTabsProfile = const <Tab>[
    Tab(
      text: "159 followers",
    ),
    Tab(
      text: "335 following",
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
