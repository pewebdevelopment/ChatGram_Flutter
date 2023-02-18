import 'package:flutter/material.dart';
import 'package:instragramclone/constants/color.dart';
import 'package:instragramclone/constants/textstyle.dart';
import 'package:instragramclone/screen/bottomscreen/home/subscreen/storydir/model/comment_data_model.dart';

class CommentsScreen extends StatelessWidget {
  const CommentsScreen({Key? key}) : super(key: key);

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
          "Comments",
          style: TextStyleClass.sourceSansProSemiBold(size: 22.0),
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 20),
              border: InputBorder.none,
              hintText: "Write a caption..",
              hintStyle: TextStyleClass.sourceSansProRegular(
                color: ColorConst.grey949,
              ),
            ),
          ),
          Divider(
            height: 1,
            color: ColorConst.greyE2,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: commentDataList.length,
              shrinkWrap: true,
              // physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                var item = commentDataList[index];
                return Padding(
                  padding: const EdgeInsets.only(left: 10, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 55,
                            width: 55,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  item.image.toString(),
                                ),
                                fit: BoxFit.fill,
                              ),
                              shape: BoxShape.circle,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      item.title.toString(),
                                      style: TextStyleClass.sourceSansProBold(
                                        color: ColorConst.black2A,
                                      ),
                                    ),
                                    Text(
                                      "  \u2022 ${item.time.toString()}",
                                      style:
                                          TextStyleClass.sourceSansProRegular(
                                        color: ColorConst.grey949,
                                      ),
                                    ),
                                    SizedBox(
                                      width:
                                          item.like.toString() == "" ? 0 : 20,
                                    ),
                                    Text(
                                      item.like.toString(),
                                      style:
                                          TextStyleClass.sourceSansProRegular(
                                        color: ColorConst.grey949,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      "Reply",
                                      style:
                                          TextStyleClass.sourceSansProRegular(
                                        color: ColorConst.appColor,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  item.subtitle.toString(),
                                  style: TextStyleClass.sourceSansProRegular(
                                    color: ColorConst.black2A,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          item.isFav == true
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: item.isFav == true
                              ? ColorConst.appColor
                              : ColorConst.greyAD,
                        ),
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
