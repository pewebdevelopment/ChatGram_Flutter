import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instragramclone/constants/color.dart';
import 'package:instragramclone/constants/textstyle.dart';
import 'package:instragramclone/screen/bottomscreen/profile/menuscreen/activity/datamodel/profile_activity_data_model.dart';

class ProfileActivityScreen extends StatelessWidget {
  const ProfileActivityScreen({Key? key}) : super(key: key);

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
          "Your activity",
          style: TextStyleClass.sourceSansProBold(
            size: 22.0,
            color: ColorConst.black2A,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  right: 39, left: 39, top: 25, bottom: 15),
              child: Text(
                "One place to manage your activity",
                textAlign: TextAlign.center,
                style: TextStyleClass.sourceSansProSemiBold(
                  size: 24.0,
                  color: ColorConst.black2A,
                ),
              ),
            ),
            Text(
              '''We’ve added more tools for you to review and
manage your photos, videos, account and
activity on Chatgram''',
              textAlign: TextAlign.center,
              style: TextStyleClass.sourceSansProRegular(
                color: ColorConst.grey949,
              ),
            ),
            ListView.builder(
              itemCount: profileActivityDataList.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                var item = profileActivityDataList[index];
                return Column(
                  children: [
                    ListTile(
                      title: Text(
                        item.title.toString(),
                        style: TextStyleClass.sourceSansProSemiBold(
                          color: ColorConst.black2A,
                        ),
                      ),
                      subtitle: Text(
                        item.subtitle.toString(),
                        style: TextStyleClass.sourceSansProRegular(
                          color: ColorConst.grey949,
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 13,
                        ),
                      ),
                      leading: SvgPicture.asset(
                        item.image.toString(),
                      ),
                      contentPadding:
                          EdgeInsets.only(top: 10, bottom: 10, left: 20),
                    ),
                    Divider(
                      height: 1,
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
