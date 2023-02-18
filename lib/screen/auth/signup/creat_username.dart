import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instragramclone/constants/color.dart';
import 'package:instragramclone/constants/textstyle.dart';
import 'package:instragramclone/screen/auth/signup/controller/create_user_controller.dart';
import 'package:instragramclone/screen/auth/signup/signup_info_screen.dart';
import 'package:instragramclone/utiles/utiles.dart';

class CreateUserNameScreen extends StatelessWidget {
  final CreateUserController createUserController =
      Get.put(CreateUserController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.white,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        foregroundColor: ColorConst.black2A,
        backgroundColor: ColorConst.white,
        elevation: 0,
      ),
      body: Obx(
        () => SingleChildScrollView(

          child: Column(
            children: [
              Text(
                "Create Username",
                style: TextStyleClass.sourceSansProSemiBold(size: 22.0),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Add a username or use our suggestion. You can\nchange this at any time.",
                textAlign: TextAlign.center,
                style: TextStyleClass.sourceSansProRegular(
                  color: ColorConst.grey949,
                ),
              ),
              SizedBox(
                height: 30,
              ),

              ///birthdate
              CommonTextField(
                hintText: 'Enter Name',
                controller: createUserController.createUserName,
                keyBoardType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 432,
              ),
              createUserController.controllerText.isNotEmpty
                  ? Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 37),
                      child: CommonButton(
                        title: "Next",
                        fontSize: 16.0,
                        onPresss: () {
                          Get.to(
                            () => SignUpInfoScreen(),
                          );
                        },
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 37),
                      child: CommonButton(
                        title: "Next",
                        fontSize: 16.0,
                        color: ColorConst.greyB5,
                        onPresss: () {
                          /*    Get.to(
                          () => CreateUserNameScreen(),
                    );*/
                        },
                      ),
                    ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
