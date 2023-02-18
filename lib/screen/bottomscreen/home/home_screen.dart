import 'package:flutter/material.dart';
import 'package:instragramclone/constants/color.dart';
import 'package:instragramclone/screen/bottomscreen/home/homeutiles/home_utiles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),

            ///appBar
            homeAppBar(),
            SizedBox(
              height: 5,
            ),
            Divider(
              height: 1,
              color: ColorConst.greyE2,
            ),

            ///addStoryList
            homeAddStoryListView(),
            Divider(
              height: 1,
              color: ColorConst.greyE2,
            ),

            ///mainPostView
            homePostView(),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
