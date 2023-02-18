import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatCommentController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final List<Tab> myTabs = const <Tab>[
    Tab(text: 'Chats'),
    Tab(text: 'Calls'),
    Tab(text: 'Requests'),
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
