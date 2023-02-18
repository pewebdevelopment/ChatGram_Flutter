import 'package:instragramclone/constants/images.dart';

class DiscoverListModel {
  String? title;
  String? subTitle;
  String? image;
  bool? isShow;
  bool? isSelected = false;

  DiscoverListModel(
      {this.title, this.subTitle, this.image, this.isShow, this.isSelected});
}

final List<DiscoverListModel> discoverList = [
  DiscoverListModel(
    image: ImageCons.facebook,
    title: "Find Facebook Friends",
    subTitle: "Add your account",
    isShow: false,
  ),
  DiscoverListModel(
    image: ImageCons.connect,
    title: "Connect contacts",
    subTitle: "Follow people you know",
    isShow: false,
  ),
  DiscoverListModel(
    image: ImageCons.pic1,
    title: "Kathryn_Murphy",
    subTitle: "Kathryn Murphy",
    isShow: true,
  ),
  DiscoverListModel(
    image: ImageCons.pic2,
    title: "Mar_McKinney 🙈",
    subTitle: "Marvin McKinney",
    isShow: true,
  ),
  DiscoverListModel(
    image: ImageCons.pic3,
    title: "Annette 🖤",
    subTitle: "Annette Black",
    isShow: false,
  ),
  DiscoverListModel(
    image: ImageCons.pic4,
    title: "Jane_Cooper",
    subTitle: "Jane Cooper",
    isShow: false,
  ),
  DiscoverListModel(
    image: ImageCons.pic1,
    title: "Cameron 😼",
    subTitle: "Cameron Williamson",
    isShow: false,
  ),
  DiscoverListModel(
    image: ImageCons.pic2,
    title: "👑 Kristin 👑",
    subTitle: "Kristin Watson",
    isShow: false,
  ),
  DiscoverListModel(
    image: ImageCons.pic3,
    title: "Savannah (>‿◠)✌",
    subTitle: "Savannah Nguyen",
    isShow: true,
  ),
  DiscoverListModel(
    image: ImageCons.pic4,
    title: "Darrell_Steward",
    subTitle: "Darrell Steward",
    isShow: true,
  ),
  DiscoverListModel(
    image: ImageCons.pic1,
    title: "Robert 🐺",
    subTitle: "Robert Fox",
    isShow: false,
  ),
  DiscoverListModel(
    image: ImageCons.pic2,
    title: "Brooklyn Sim",
    subTitle: "Brooklyn Simmons",
    isShow: true,
  ),
  DiscoverListModel(
    image: ImageCons.pic3,
    title: "Floyd_M_i_l_e_s",
    subTitle: "Floyd Miles",
    isShow: false,
  ),
  DiscoverListModel(
    image: ImageCons.pic4,
    title: "💓 Cooper 💓",
    subTitle: "Bessie Cooper",
    isShow: false,
  ),
  DiscoverListModel(
    image: ImageCons.pic1,
    title: "Arlene >McCoy",
    subTitle: "Arlene McCoy",
    isShow: false,
  ),
  DiscoverListModel(
    image: ImageCons.pic2,
    title: "Diannerussell",
    subTitle: "Dianne Russell",
    isShow: true,
  ),
  DiscoverListModel(
    image: ImageCons.pic3,
    title: "DarleneOfficial.",
    subTitle: "Darlene Robertson",
    isShow: true,
  ),
  DiscoverListModel(
    image: ImageCons.pic4,
    title: "Eleanor 🔥",
    subTitle: "Eleanor Pena",
    isShow: false,
  ),
];
