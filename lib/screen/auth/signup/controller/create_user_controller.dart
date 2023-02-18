import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateUserController extends GetxController {
  TextEditingController createUserName = TextEditingController();
  RxString controllerText = ''.obs;

  @override
  void onInit() {
    createUserName.addListener(() {
      controllerText.value = createUserName.text;
    });

    debounce(controllerText, (_) {
      print("debouce$_");
    }, time: Duration(seconds: 1));
    super.onInit();
  }

  @override
  void dispose() {
    createUserName.dispose();
    // TODO: implement dispose
    super.dispose();
  }
}
