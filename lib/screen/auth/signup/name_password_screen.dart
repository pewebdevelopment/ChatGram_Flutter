import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instragramclone/constants/color.dart';
import 'package:instragramclone/constants/textstyle.dart';
import 'package:instragramclone/screen/auth/signup/add_your_brithday.dart';
import 'package:instragramclone/screen/auth/signup/controller/name_password_controller.dart';
import 'package:instragramclone/utiles/utiles.dart';

class NamePasswordScreen extends StatelessWidget {
  final NamePasswordController namePasswordController =
      Get.put(NamePasswordController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 90,
            ),
            Text(
              "Name and Password",
              style: TextStyleClass.sourceSansProSemiBold(size: 22.0),
            ),
            SizedBox(
              height: 30,
            ),

            ///name
            CommonTextField(
              hintText: 'Full Name',
              keyBoardType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 25,
            ),

            ///password
            Obx(
              () => CommonTextField(
                hintText: 'Password',
                keyBoardType: TextInputType.visiblePassword,
                obscure: namePasswordController.isOpenLogIn.value,
                onTap: () {
                  namePasswordController.isOpenLogIn.value =
                      !namePasswordController.isOpenLogIn.value;
                },
                isSelected: namePasswordController.isOpenLogIn.isFalse,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Obx(
                    () => Checkbox(
                      checkColor: Colors.white,
                      activeColor: Colors.red,
                      value: namePasswordController.valueFirst.value,
                      onChanged: (value) {
                        namePasswordController.valueFirst.value = value!;
                      },
                    ),
                  ),
                  Text(
                    "Remember Password",
                    style: TextStyleClass.sourceSansProRegular(size: 12.0),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text:
                          "Your contacts will be periodically synced and stored on Chatgram servers to hepl you and others find friends, and to help us provide a better service. to remove contacts, go to Settings and disconnect. ",
                      style: TextStyleClass.sourceSansProRegular(
                        color: ColorConst.grey949,
                      ),
                    ),
                    TextSpan(
                      text: "Learn More",
                      style: TextStyleClass.sourceSansProSemiBold(
                        color: ColorConst.black2A,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 250,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 37),
              child: CommonButton(
                title: "Continue and Sync Contacts",
                fontSize: 16.0,
                onPresss: () {
                  Get.to(
                    () => AddBirthdayScreen(),
                  );
                },
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {
                Get.to(
                  () => AddBirthdayScreen(),
                );
              },
              child: Text(
                'Continue without syncing contacts',
                style: TextStyle(
                  fontFamily: "SourceSansPro",
                  color: ColorConst.appColor,
                  decoration: TextDecoration.underline,
                  decorationColor: ColorConst.appColor,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
