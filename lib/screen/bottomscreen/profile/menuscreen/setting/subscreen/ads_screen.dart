import 'package:flutter/material.dart';
import 'package:instragramclone/constants/color.dart';
import 'package:instragramclone/constants/textstyle.dart';

class AdsScreen extends StatelessWidget {
  final List adsList = [
    "Ad Preferences",
    "Ad topics",
    "Data about your activity from partners",
    "",
    "General info",
    "Ad interests",
    "Ad Activity",
    "About ads",
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
          "Ads",
          style: TextStyleClass.sourceSansProBold(
            size: 22.0,
            color: ColorConst.black2A,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: adsList.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          if (index == 3) {
            return Divider(
              height: 1,
            );
          }
          return ListTile(
            title: Text(
              adsList[index].toString(),
              style: TextStyleClass.sourceSansProRegular(size: 16.0),
            ),
          );
        },
      ),
    );
  }
}
