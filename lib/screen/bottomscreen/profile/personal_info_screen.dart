import 'package:flutter/material.dart';
import 'package:instragramclone/constants/color.dart';
import 'package:instragramclone/constants/textstyle.dart';

class PersonalInfoScreen extends StatelessWidget {
  const PersonalInfoScreen({Key? key}) : super(key: key);

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
          "Personal information",
          style: TextStyleClass.sourceSansProSemiBold(
            size: 22.0,
            color: ColorConst.black2A,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 20, bottom: 20),
              child: Text(
                '''Provide your personal information, even if the
account is used for a business, a pet or something else.
This won’t be part of your public profile.''',
                textAlign: TextAlign.center,
                style: TextStyleClass.sourceSansProRegular(
                  color: ColorConst.black2A,
                ),
              ),
            ),
          ),
          Divider(
            height: 1,
          ),
          ListTile(
            title: Text(
              "E-mail Address",
              style: TextStyleClass.sourceSansProSemiBold(
                size: 16.0,
                color: ColorConst.grey81,
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: ColorConst.grey81,
              size: 20,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Divider(
              height: 1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Text(
              "Phone number",
              style: TextStyleClass.sourceSansProRegular(
                color: ColorConst.grey81,
              ),
            ),
          ),
          ListTile(
            title: Text(
              "+91 1234567890",
              style: TextStyleClass.sourceSansProSemiBold(
                size: 16.0,
                color: ColorConst.grey81,
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: ColorConst.grey81,
              size: 20,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Divider(
              height: 1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Text(
              "Gender",
              style: TextStyleClass.sourceSansProRegular(
                color: ColorConst.grey81,
              ),
            ),
          ),
          ListTile(
            title: Text(
              "Male",
              style: TextStyleClass.sourceSansProSemiBold(
                size: 16.0,
                color: ColorConst.grey81,
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: ColorConst.grey81,
              size: 20,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Divider(
              height: 1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Text(
              "Birthday",
              style: TextStyleClass.sourceSansProRegular(
                color: ColorConst.grey81,
              ),
            ),
          ),
          ListTile(
            title: Text(
              "Aug 22, 2003",
              style: TextStyleClass.sourceSansProSemiBold(
                size: 16.0,
                color: ColorConst.grey81,
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: ColorConst.grey81,
              size: 20,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Divider(
              height: 1,
            ),
          ),
        ],
      ),
    );
  }
}
