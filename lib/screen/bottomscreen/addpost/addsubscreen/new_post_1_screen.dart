import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:instragramclone/constants/color.dart';
import 'package:instragramclone/constants/images.dart';
import 'package:instragramclone/constants/textstyle.dart';
import 'package:instragramclone/screen/bottomscreen/addpost/addsubscreen/new_post_2_screen.dart';

class NewPostScreen1 extends StatelessWidget {
  final List filter = [
    "Normal",
    "Clarendon",
    "Gingham",
    "Moon",
    "Normal",
    "Clarendon",
    "Gingham",
    "Moon",
    "Gingham",
    "Moon"
  ];

  final List<Map> align = [
    {"image": ImageCons.adjust, "text": "Adjust"},
    {"image": ImageCons.sun, "text": "Brightness"},
    {"image": ImageCons.contrast, "text": "Contrast"},
    {"image": ImageCons.structure, "text": "Structure"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.white,
      appBar: AppBar(
        backgroundColor: ColorConst.white,
        automaticallyImplyLeading: true,
        foregroundColor: ColorConst.black2A,
        centerTitle: true,
        title: Text(
          "New post",
          style: TextStyleClass.sourceSansProSemiBold(size: 22.0),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(() => NewPostScreen2());
            },
            icon: Icon(
              Icons.arrow_forward,
              color: ColorConst.appColor,
            ),
          )
        ],
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            width: Get.width,
            margin: EdgeInsets.only(bottom: 50),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  ImageCons.addPostPic1,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(right: 20, bottom: 20),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Image(
                  image: AssetImage(
                    ImageCons.cornersOut,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 96,
            child: ListView.builder(
              itemCount: 10,
              shrinkWrap: true,
              padding: EdgeInsets.only(left: 20),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(6),
                          image: DecorationImage(
                            image: AssetImage(ImageCons.picPost1),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text(
                        filter[index],
                        style: TextStyleClass.sourceSansProSemiBold(size: 12.0),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 50,
          ),
          SizedBox(
            height: 96,
            child: ListView.builder(
              itemCount: 4,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.only(left: 20, right: 5),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          color: ColorConst.white,
                          borderRadius: BorderRadius.circular(6),
                          boxShadow: [
                            BoxShadow(
                              color: ColorConst.black.withOpacity(0.08),
                              blurRadius: 16,
                              offset: Offset(0, 0),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(19.0),
                          child: SvgPicture.asset(
                            align[index]["image"],
                          ),
                        ),
                      ),
                      Text(
                        align[index]["text"],
                        style: TextStyleClass.sourceSansProSemiBold(size: 12.0),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
