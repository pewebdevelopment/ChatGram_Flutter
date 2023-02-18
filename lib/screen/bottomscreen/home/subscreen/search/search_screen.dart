import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instragramclone/constants/color.dart';
import 'package:instragramclone/constants/textstyle.dart';
import 'package:instragramclone/screen/bottomscreen/home/subscreen/search/searchcontroller/search_controller.dart';
import 'package:instragramclone/screen/bottomscreen/home/subscreen/search/utiles/utiles_search.dart';

class SearchScreen extends StatefulWidget {
  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final SearchController searchController = Get.put(SearchController());
  final MyTabController tabX = Get.put(MyTabController());
  bool isTabShow = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 12,
            ),

            ///appbar
            appbarSearch(controller: searchController),

            ///postImage
            if (isTabShow == false)
              Obx(
                () => searchController.textFieldString.isEmpty
                    ? postWidget()
                    : searchResultShow(
                        onTap: () {
                          setState(() {
                            isTabShow = true;
                          });
                        },
                      ),
              )
            else
              TabBar(
                controller: tabX.controller,
                tabs: tabX.myTabs,
                isScrollable: true,
                unselectedLabelColor: ColorConst.grey81,
                labelStyle: TextStyleClass.sourceSansProSemiBold(),
                labelColor: ColorConst.appColor,
                indicatorColor: ColorConst.appColor,
              ),
            isTabShow == true
                ? Divider(
                    height: 1,
                  )
                : SizedBox.shrink(),
            isTabShow == true
                ? SizedBox(
                    height: Get.height*1.2,
                    child: TabBarView(
                      controller: tabX.controller,
                      children: [
                        TopScreen(),
                        AccountsScreen(),
                        AudioScreen(),
                        TagScreen(),
                                                                                                                                                                                                        PlaceScreen(),
                      ],
                    ),
                  )
                : SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
