import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:instragramclone/constants/color.dart';

import 'package:instragramclone/constants/textstyle.dart';

import 'package:instragramclone/screen/bottomscreen/home/subscreen/activity/activityutiles/activity_utiles.dart';
import 'package:instragramclone/screen/bottomscreen/home/subscreen/activity/discover_activity_screen.dart';


class ActivityScreen extends StatelessWidget {
  const ActivityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.white,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        foregroundColor: ColorConst.black2A,
        backgroundColor: ColorConst.white,
        centerTitle: true,
        title: Text(
          "Activity",
          style: TextStyleClass.sourceSansProSemiBold(size: 22.0),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///followRequests
            followRow(),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "This week",
                style: TextStyleClass.sourceSansProSemiBold(size: 18.0),
              ),
            ),

            ///this week
            thisWeekList(),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Text(
                "This month",
                style: TextStyleClass.sourceSansProSemiBold(size: 18.0),
              ),
            ),

            ///this month
            thisMonthList(),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Text(
                "Earlier",
                style: TextStyleClass.sourceSansProSemiBold(size: 18.0),
              ),
            ),

            ///this month
            earlierList(),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Text(
                "Suggestion for you",
                style: TextStyleClass.sourceSansProSemiBold(size: 18.0),
              ),
            ),

            ///suggestion
            suggestionListDesign(),

            SizedBox(
              height: 25,
            ),
            Center(
              child: TextButton(
                onPressed: () {
                  Get.to(
                    () => DiscoverActivityScreen(),
                  );
                },
                child: Text(
                  'See all suggestion',
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
            ),
            SizedBox(
              height: 31,
            ),
          ],
        ),
      ),
    );
  }
}
