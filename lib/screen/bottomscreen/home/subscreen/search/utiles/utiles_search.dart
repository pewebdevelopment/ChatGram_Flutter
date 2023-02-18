import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:instragramclone/constants/color.dart';
import 'package:instragramclone/constants/images.dart';
import 'package:instragramclone/constants/textstyle.dart';
import 'package:instragramclone/screen/bottomscreen/home/subscreen/search/searchcontroller/search_controller.dart';
import 'package:instragramclone/screen/bottomscreen/home/subscreen/search/utiles/search_data.dart';

appbarSearch({SearchController? controller}) {
  return AppBar(
    foregroundColor: ColorConst.black2A,
    backgroundColor: ColorConst.white,
    elevation: 0,
    title: TextFormField(
      cursorColor: ColorConst.appColor,
      controller: controller!.searchTextController,
      decoration: InputDecoration(
        filled: true,
        contentPadding: EdgeInsets.only(left: 20, top: 16, bottom: 16),
        fillColor: ColorConst.greyF3,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        suffixIcon: Icon(
          Icons.mic_none,
          color: ColorConst.black2A,
        ),
        hintText: "Type to search...",
        hintStyle: TextStyleClass.capriolaRegular(
          color: ColorConst.grey81,
        ),
      ),
    ),
  );
}

postWidget() {
  return StaggeredGridView.countBuilder(
    padding: EdgeInsets.zero,
    physics: NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    crossAxisCount: 3,
    itemCount: searchDataList.length,
    itemBuilder: (context, index) => Card(
      child: Image(
        image: AssetImage(
          searchDataList[index].image.toString(),
        ),
      ),
    ),
    staggeredTileBuilder: (index) => StaggeredTile.count(
      (index % 7 == 0) ? 2 : 1,
      (index % 7 == 0) ? 2 : 1,
    ),
    mainAxisSpacing: 2,
    crossAxisSpacing: 2,
  );
}

searchResultShow({var onTap}) {
  return ListView.builder(
    padding: EdgeInsets.zero,
    physics: NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    itemCount: 4,
    itemBuilder: (context, index) {
      var item = searchHistoryList[index];
      return Column(
        children: [
          index == 0
              ? Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Divider(
                    height: 1,
                  ),
                )
              : Container(),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 55,
                      width: 55,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image(
                        image: AssetImage(
                          item.image.toString(),
                        ),
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
                                style: TextStyleClass.sourceSansProSemiBold(
                                    size: 14.0),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              item.isShow == true
                                  ? Image(
                                      height: 14,
                                      image: AssetImage(
                                        ImageCons.celebs,
                                      ),
                                    )
                                  : Container(),
                            ],
                          ),
                          Text(
                            item.subTitle.toString(),
                            style: TextStyleClass.sourceSansProRegular(
                              size: 12.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          index == 3
              ? Padding(
                  padding: const EdgeInsets.only(top: 35),
                  child: TextButton(
                    onPressed: onTap,
                    child: Text(
                      'See all results',
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
                )
              : SizedBox.shrink(),
        ],
      );
    },
  );
}

class TopScreen extends StatelessWidget {
  const TopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: searchHistoryList.length,
      itemBuilder: (context, index) {
        var item = searchHistoryList[index];
        return Padding(
          padding: const EdgeInsets.only(top: 20, left: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 55,
                    width: 55,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image(
                      image: AssetImage(
                        item.image.toString(),
                      ),
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
                              style: TextStyleClass.sourceSansProSemiBold(
                                  size: 14.0),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            item.isShow == true
                                ? Image(
                                    height: 14,
                                    image: AssetImage(
                                      ImageCons.celebs,
                                    ),
                                  )
                                : Container(),
                          ],
                        ),
                        Text(
                          item.subTitle.toString(),
                          style: TextStyleClass.sourceSansProRegular(
                            size: 12.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

class AccountsScreen extends StatelessWidget {
  const AccountsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: searchHistoryList.length,
      itemBuilder: (context, index) {
        var item = searchHistoryList[index];
        return Padding(
          padding: const EdgeInsets.only(top: 20, left: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 55,
                    width: 55,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image(
                      image: AssetImage(
                        item.image.toString(),
                      ),
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
                              style: TextStyleClass.sourceSansProSemiBold(
                                  size: 14.0),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            item.isShow == true
                                ? Image(
                                    height: 14,
                                    image: AssetImage(
                                      ImageCons.celebs,
                                    ),
                                  )
                                : Container(),
                          ],
                        ),
                        Text(
                          item.subTitle.toString(),
                          style: TextStyleClass.sourceSansProRegular(
                            size: 12.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

class AudioScreen extends StatelessWidget {
  const AudioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: searchAudioList.length,
      itemBuilder: (context, index) {
        var item = searchAudioList[index];
        return Padding(
          padding: const EdgeInsets.only(top: 20, left: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 55,
                    width: 55,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image(
                      image: AssetImage(
                        item.image.toString(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.title.toString(),
                          style:
                              TextStyleClass.sourceSansProSemiBold(size: 14.0),
                        ),
                        Text(
                          item.subTitle.toString(),
                          style: TextStyleClass.sourceSansProRegular(
                            size: 12.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

class TagScreen extends StatelessWidget {
  const TagScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: searchTagsList.length,
      itemBuilder: (context, index) {
        var item = searchTagsList[index];
        return Padding(
          padding: const EdgeInsets.only(top: 35, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.title.toString(),
                style: TextStyleClass.sourceSansProSemiBold(size: 14.0),
              ),
              Text(
                item.subTitle.toString(),
                style: TextStyleClass.sourceSansProRegular(
                  size: 12.0,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class PlaceScreen extends StatelessWidget {
  const PlaceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: searchPlaces.length,
      itemBuilder: (context, index) {
        var item = searchPlaces[index];
        return Padding(
          padding: const EdgeInsets.only(left: 20, bottom: 35),
          child: Row(
            children: [
              Icon(
                Icons.location_on_outlined,
                color: ColorConst.black,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                item.title.toString(),
                style: TextStyleClass.sourceSansProSemiBold(),
              ),
            ],
          ),
        );
      },
    );
  }
}
