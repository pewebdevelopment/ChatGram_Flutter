import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReelController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final List<Tab> myTabs = const <Tab>[
    Tab(text: 'Top'),
    Tab(text: 'Accounts'),
    Tab(text: 'Audio'),
    Tab(text: 'Tags'),
    Tab(text: 'Places'),
  ];



  late TabController controller;


  @override
  void onInit() {
    super.onInit();
    controller = TabController(vsync: this, length: myTabs.length);

  }

  @override
  void onClose() {
    controller.dispose();

    super.onClose();
  }
}
