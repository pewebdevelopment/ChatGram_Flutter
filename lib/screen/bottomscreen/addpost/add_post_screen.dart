import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:instragramclone/constants/color.dart';
import 'package:instragramclone/constants/images.dart';
import 'package:instragramclone/constants/textstyle.dart';
import 'package:instragramclone/screen/bottomscreen/addpost/addsubscreen/new_post_1_screen.dart';
import 'package:instragramclone/screen/bottomscreen/home/subscreen/search/utiles/search_data.dart';

class AddPostScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.white,
      appBar: AppBar(
        backgroundColor: ColorConst.white,
        title: Text(
          "New post",
          style: TextStyleClass.sourceSansProSemiBold(size: 22.0),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(() => NewPostScreen1());
            },
            icon: Icon(
              Icons.arrow_forward,
              color: ColorConst.appColor,
            ),
          )
        ],
        elevation: 0,
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 300,
                  width: Get.width,
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
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20, vertical: 15.5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Text(
                              "Hidden Requests",
                              style: TextStyleClass.sourceSansProSemiBold(
                                size: 16.0,
                                color: ColorConst.black2A,
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down_sharp,
                              color: ColorConst.black2A,
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: ColorConst.greyA4,
                              shape: BoxShape.circle,
                            ),
                            child: SvgPicture.asset(
                              ImageCons.copyIcon,
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: ColorConst.greyA4,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.camera_alt_outlined,
                              color: ColorConst.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: searchDataList.length,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 3 / 3,
                    crossAxisSpacing: 3,
                    mainAxisSpacing: 3,
                  ),
                  itemBuilder: (BuildContext context, index) {
                    return Image(
                      image: AssetImage(searchDataList[index].image.toString()),
                    );
                  },
                ),
                SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),

          ///tabbar
          /* Container(
            height: 50,
            width: Get.width,
            margin: EdgeInsets.only(bottom: 80, left: 34, right: 34),
            decoration: BoxDecoration(
              color: ColorConst.black2A.withOpacity(0.98),
              borderRadius: BorderRadius.circular(55),
            ),
            child: Padding(
              padding: const EdgeInsets.only(right: 15, left: 15),
              child: GetBuilder<AddPostController>(
                init: AddPostController(),
                builder: (controller) => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    4,
                    (index) {
                      return TextButton(
                        onPressed: () {
                          controller.selectedItem(index);
                          Get.to(controller.buttonOnTap[index]);
                        },
                        child: Text(
                          controller.buttonList[index],
                          style: controller.selectedIndex == index
                              ? TextStyleClass.sourceSansProBold(
                                  color: ColorConst.white,
                                )
                              : TextStyleClass.sourceSansProRegular(
                                  color: ColorConst.white,
                                ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),*/
        ],
      ),
    );
  }
}
