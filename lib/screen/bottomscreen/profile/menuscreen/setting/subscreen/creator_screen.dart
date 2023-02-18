import 'package:flutter/material.dart';
import 'package:instragramclone/constants/color.dart';

import '../../../../../../constants/textstyle.dart';

class CreatorScreen extends StatelessWidget {
  final List creatorList = [
    "Ad Payments",
    "Branded content",
    "Branded content ads",
    "Saved replies",
    "Frequently asked questions",
    "Connect or create",
    "Minimum age",
    "Monetization status",
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
          "Creator",
          style: TextStyleClass.sourceSansProBold(
            size: 22.0,
            color: ColorConst.black2A,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: creatorList.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          if (index == 8) {
            return Divider(
              height: 1,
            );
          }
          return ListTile(
            title: Text(
              creatorList[index].toString(),
              style: TextStyleClass.sourceSansProRegular(size: 16.0),
            ),
            trailing: index == 4
                ? Text(
                    "Off",
                    style: TextStyleClass.sourceSansProRegular(
                      color: ColorConst.grey81,
                    ),
                  )
                : SizedBox.shrink(),
          );
        },
      ),
    );
  }
}
