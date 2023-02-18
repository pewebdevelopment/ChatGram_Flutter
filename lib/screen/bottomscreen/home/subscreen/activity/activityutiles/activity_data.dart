import 'package:instragramclone/constants/images.dart';
import 'package:instragramclone/screen/discoverpeople/model/data_model.dart';

class ActivityDataModel {
  String? image;
  String? title;
  String? subTitle;
  String? day;

  ActivityDataModel({this.image, this.title, this.subTitle, this.day});
}

List<ActivityDataModel> thisMonthDataList = [
  ActivityDataModel(
    image: ImageCons.pic1,
    title: "👑 Kristin 👑",
    subTitle: "Started following you. ",
    day: "6d",
  ),
  ActivityDataModel(
    image: ImageCons.pic2,
    title: "Mar_McKinney 🙈",
    subTitle: "liked your story ",
    day: "4d",
  ),
  ActivityDataModel(
    image: ImageCons.pic3,
    title: "Annette 🖤",
    subTitle: "Started following you. ",
    day: "6d",
  ),
  ActivityDataModel(
    image: ImageCons.pic4,
    title: "Cameron 😼",
    subTitle: "liked your story ",
    day: "4d",
  ),
  ActivityDataModel(
    image: ImageCons.pic1,
    title: "Robert 🐺",
    subTitle: "liked your story ",
    day: "4d",
  ),
  ActivityDataModel(
    image: ImageCons.pic2,
    title: "Savannah (>‿◠)✌",
    subTitle: "and 106 others follow\nyou, but you don’t follow them back. ",
    day: "6d",
  ),
  ActivityDataModel(
    image: ImageCons.pic3,
    title: "Brooklyn Sim",
    subTitle: "Started following you. ",
    day: "6d",
  ),
];

List<ActivityDataModel> earlierDataList = [
  ActivityDataModel(
    image: ImageCons.pic1,
    title: "💓 Cooper 💓",
    subTitle: "liked your story ",
    day: "4d",
  ),
  ActivityDataModel(
    image: ImageCons.pic2,
    title: "Savannah (>‿◠)✌",
    subTitle: "commented on a post that you’re tagged in: 😂 ",
    day: "6d",
  ),
  ActivityDataModel(
    image: ImageCons.pic3,
    title: "Arlene >McCoy ",
    subTitle: "liked your post ",
    day: "4d",
  ),
  ActivityDataModel(
    image: ImageCons.pic4,
    title: "Arlene >McCoy",
    subTitle: " liked your post ",
    day: "4d",
  ),
  ActivityDataModel(
    image: ImageCons.pic1,
    title: "Arlene >McCoy",
    subTitle: " liked your post ",
    day: "4d",
  ),
  ActivityDataModel(
    image: ImageCons.pic2,
    title: "Arlene >McCoy",
    subTitle: " liked your post ",
    day: "4d",
  ),
  ActivityDataModel(
    image: ImageCons.pic3,
    title: "Arlene >McCoy",
    subTitle: " liked your post ",
    day: "4d",
  ),
];

///suggestionDataList
final List<DiscoverListModel> suggestionDataList = [
  DiscoverListModel(
    image: ImageCons.pic4,
    title: "Darrell_Steward",
    subTitle: "Darrell Steward",
    isShow: true,
  ),
  DiscoverListModel(
    image: ImageCons.pic2,
    title: "Robert 🐺",
    subTitle: "Robert Fox",
    isShow: false,
  ),
  DiscoverListModel(
    image: ImageCons.pic1,
    title: "Brooklyn Sim",
    subTitle: "Brooklyn Simmons",
    isShow: true,
  ),
  DiscoverListModel(
    image: ImageCons.pic2,
    title: "Floyd_M_i_l_e_s",
    subTitle: "Floyd Miles",
    isShow: false,
  ),
  DiscoverListModel(
    image: ImageCons.pic3,
    title: "💓 Cooper 💓",
    subTitle: "Bessie Cooper",
    isShow: false,
  ),
];

///discoverlist
final List<DiscoverListModel> discoverActivityList = [
  DiscoverListModel(
    image: ImageCons.pic1,
    title: "Kathryn_Murphy",
    subTitle: "Kathryn Murphy",
    isShow: true,
    isSelected: false,
  ),
  DiscoverListModel(
    image: ImageCons.pic2,
    title: "Mar_McKinney 🙈",
    subTitle: "Marvin McKinney",
    isShow: true,
    isSelected: false,
  ),
  DiscoverListModel(
    image: ImageCons.pic3,
    title: "Annette 🖤",
    subTitle: "Annette Black",
    isShow: false,
    isSelected: false,
  ),
  DiscoverListModel(
    image: ImageCons.pic4,
    title: "Jane_Cooper",
    subTitle: "Jane Cooper",
    isShow: false,
    isSelected: false,
  ),
  DiscoverListModel(
    image: ImageCons.pic1,
    title: "Cameron 😼",
    subTitle: "Cameron Williamson",
    isShow: false,
    isSelected: false,
  ),
  DiscoverListModel(
    image: ImageCons.pic2,
    title: "👑 Kristin 👑",
    subTitle: "Kristin Watson",
    isShow: false,
    isSelected: false,
  ),
  DiscoverListModel(
    image: ImageCons.pic3,
    title: "Savannah (>‿◠)✌",
    subTitle: "Savannah Nguyen",
    isShow: true,
    isSelected: false,
  ),
  DiscoverListModel(
    image: ImageCons.pic4,
    title: "Darrell_Steward",
    subTitle: "Darrell Steward",
    isShow: true,
    isSelected: false,
  ),
  DiscoverListModel(
    image: ImageCons.pic1,
    title: "Robert 🐺",
    subTitle: "Robert Fox",
    isShow: false,
    isSelected: false,
  ),
  DiscoverListModel(
    image: ImageCons.pic2,
    title: "Brooklyn Sim",
    subTitle: "Brooklyn Simmons",
    isShow: true,
    isSelected: false,
  ),
  DiscoverListModel(
    image: ImageCons.pic3,
    title: "Floyd_M_i_l_e_s",
    subTitle: "Floyd Miles",
    isShow: false,
    isSelected: false,
  ),
  DiscoverListModel(
    image: ImageCons.pic4,
    title: "💓 Cooper 💓",
    subTitle: "Bessie Cooper",
    isShow: false,
    isSelected: false,
  ),
  DiscoverListModel(
    image: ImageCons.pic1,
    title: "Arlene >McCoy",
    subTitle: "Arlene McCoy",
    isShow: false,
    isSelected: false,
  ),
  DiscoverListModel(
    image: ImageCons.pic2,
    title: "Diannerussell",
    subTitle: "Dianne Russell",
    isShow: true,
    isSelected: false,
  ),
  DiscoverListModel(
    image: ImageCons.pic3,
    title: "DarleneOfficial.",
    subTitle: "Darlene Robertson",
    isShow: true,
    isSelected: false,
  ),
  DiscoverListModel(
    image: ImageCons.pic4,
    title: "Eleanor 🔥",
    subTitle: "Eleanor Pena",
    isShow: false,
    isSelected: false,
  ),
];
