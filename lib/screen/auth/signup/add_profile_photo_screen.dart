import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instragramclone/constants/color.dart';
import 'package:instragramclone/constants/images.dart';
import 'package:instragramclone/constants/textstyle.dart';
import 'package:instragramclone/screen/auth/signup/signuputiles/signup_utiles.dart';
import 'package:instragramclone/screen/discoverpeople/discover_people.dart';
import 'package:instragramclone/utiles/utiles.dart';

class AddProfilePhotoScreen extends StatelessWidget {
  const AddProfilePhotoScreen({Key? key}) : super(key: key);

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
      body: Column(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              // color: ColorConst.black2A,
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(ImageCons.profilePic),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Add Profile Photo",
            style: TextStyleClass.sourceSansProSemiBold(size: 22.0),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Add a profile photo so your friends know\nit’s you.",
            textAlign: TextAlign.center,
            style: TextStyleClass.sourceSansProRegular(
              color: ColorConst.grey949,
            ),
          ),
          Spacer(),
          TextButton(
            onPressed: () {
              Get.to(
                () => DiscoverPeopleScreen(),
              );
            },
            child: Text(
              'Skip',
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 37),
            child: CommonButton(
              title: "Add a Photo",
              fontSize: 16.0,
              onPresss: () {
                showMyAlertDialog(context);
                /*Get.to(
                      () => AddProfilePhotoScreen(),
                );*/
              },
            ),
          ),
          SizedBox(
            height: 60,
          ),
        ],
      ),
    );
  }
}
