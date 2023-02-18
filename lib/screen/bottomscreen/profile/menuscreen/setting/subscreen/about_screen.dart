import 'package:flutter/material.dart';
import 'package:instragramclone/constants/color.dart';
import 'package:instragramclone/constants/textstyle.dart';

class AboutScreen extends StatelessWidget {
  final List aboutList = [
    "Privacy Policy",
    "Terms of Use",
    "Open-source libraries",
    "App updates",
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
          "About",
          style: TextStyleClass.sourceSansProBold(
            size: 22.0,
            color: ColorConst.black2A,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: aboutList.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              aboutList[index].toString(),
              style: TextStyleClass.sourceSansProRegular(size: 16.0),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: ColorConst.black2A,
              size: 20,
            ),
          );
        },
      ),
    );
  }
}
