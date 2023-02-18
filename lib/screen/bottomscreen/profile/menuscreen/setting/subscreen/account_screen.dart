import 'package:flutter/material.dart';
import 'package:instragramclone/constants/color.dart';
import 'package:instragramclone/constants/textstyle.dart';

class AccountScreen extends StatelessWidget {
  final List accountList = [
    "Personal information",
    "Saved",
    "Close friends",
    "Account status",
    "Avatar",
    "Language",
    "Captions",
    "Browser settings",
    "Contacts syncing",
    "Mobile data use",
    "Original posts",
    "Request verification",
    "Review Activity",
    "Connected Facebook Page",
    "Branded content",
    "Switch to Professional account",
    "Add new Professional account",
  ];

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
          "Account",
          style: TextStyleClass.sourceSansProBold(
            size: 22.0,
            color: ColorConst.black2A,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: accountList.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              accountList[index].toString(),
              style: TextStyleClass.sourceSansProRegular(
                size: 16.0,
                color:(index==15||index==16)?ColorConst.appColor: ColorConst.black2A,
              ),
            ),
          );
        },
      ),
    );
  }
}
