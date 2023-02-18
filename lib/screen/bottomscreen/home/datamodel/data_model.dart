import 'package:instragramclone/constants/images.dart';

class HomeStoryShowDataModel {
  String? title;
  String? subtitle;
  String? time;
  String? postPic;
  String? bio1;
  String? bio2;
  bool? isSaved;
  bool? isLike;
  bool? isShow;
  String? image;
  String? likeMsg;
  String? comments;

  HomeStoryShowDataModel({
    this.title,
    this.image,
    this.subtitle,
    this.postPic,
    this.time,
    this.isShow,
    this.bio1,
    this.bio2,
    this.comments,
    this.isLike,
    this.isSaved,
    this.likeMsg,
  });
}

List<HomeStoryShowDataModel> homeAddStoryDataList = [
  HomeStoryShowDataModel(
    title: "Your Story",
    image: ImageCons.picHome1,
  ),
  HomeStoryShowDataModel(
    title: "karennne",
    image: ImageCons.picHome2,
  ),
  HomeStoryShowDataModel(
    title: "zackjohn",
    image: ImageCons.picHome3,
  ),
  HomeStoryShowDataModel(
    title: "kieron_d",
    image: ImageCons.picHome4,
  ),
  HomeStoryShowDataModel(
    title: "Your Story",
    image: ImageCons.picHome1,
  ),
  HomeStoryShowDataModel(
    title: "karennne",
    image: ImageCons.picHome2,
  ),
  HomeStoryShowDataModel(
    title: "zackjohn",
    image: ImageCons.picHome3,
  ),
  HomeStoryShowDataModel(
    title: "kieron_d",
    image: ImageCons.picHome4,
  ),
];

List<HomeStoryShowDataModel> homePostList = [
  HomeStoryShowDataModel(
    title: "Kathryn_Murphy",
    image: ImageCons.pic1,
    postPic: ImageCons.picPost1,
    subtitle: "Kathryn Murphy",
    bio1: "And the boredom award goes to…",
    bio2:
        "#repost #cute #amazi- ng #girlstyle #sweet #swag #kerala #india #malayalam #mallu",
    comments: "61 comments",
    isLike: true,
    isSaved: false,
    isShow: true,
    likeMsg: "Jane Cooper and 21,568 other’s",
    time: "59 minutes ago",
  ),
  HomeStoryShowDataModel(
    title: "Arlene >McCoy",
    image: ImageCons.pic2,
    postPic: ImageCons.picPost2,
    subtitle: "Arlene McCoy",
    bio1: "",
    bio2: "",
    comments: "518 comments",
    isLike: false,
    isSaved: true,
    isShow: false,
    likeMsg: "Eleanor 🔥 and 65,984 other’s",
    time: "1 hr ago",
  ),
  HomeStoryShowDataModel(),
  HomeStoryShowDataModel(
    title: "Annette_Black",
    image: ImageCons.pic3,
    postPic: ImageCons.picPost3,
    subtitle: "Annette Black",
    bio1: "",
    bio2: "",
    comments: "577 comments",
    isLike: false,
    isSaved: false,
    isShow: false,
    likeMsg: "Devon Lane and 48,513 other’s",
    time: "2 hr ago",
  ),
  HomeStoryShowDataModel(
    title: "Courtney Henry",
    image: ImageCons.pic4,
    postPic: ImageCons.picPost4,
    subtitle: "Courtney Henry",
    bio1: "And the boredom award goes to…",
    bio2:
        "#repost #cute #amazi- ng #girlstyle #sweet #swag #kerala #india #malayalam #mallu",
    comments: "68 comments",
    isLike: true,
    isSaved: false,
    isShow: true,
    likeMsg: "Jane Cooper and 65,564 other’s",
    time: "2 hr ago",
  ),
  HomeStoryShowDataModel(),
  HomeStoryShowDataModel(
    title: "Annette_Black",
    image: ImageCons.pic1,
    postPic: ImageCons.picPost5,
    subtitle: "Annette Black",
    bio1: "",
    bio2: "",
    comments: "577 comments",
    isLike: false,
    isSaved: false,
    isShow: false,
    likeMsg: "Devon Lane and 48,513 other’s",
    time: "2 hr ago",
  ),
  HomeStoryShowDataModel(
    title: "Annette_Black",
    image: ImageCons.pic2,
    postPic: ImageCons.picPost6,
    subtitle: "Annette Black",
    bio1: "",
    bio2: "",
    comments: "68 comments",
    isLike: false,
    isSaved: false,
    isShow: false,
    likeMsg: "Jane Cooper and 65,564 other’s",
    time: "\u2022 2 hr ago",
  ),
  HomeStoryShowDataModel(
    title: "Courtney Henry",
    image: ImageCons.pic2,
    postPic: ImageCons.picPost7,
    subtitle: "Courtney Henry",
    bio1: "And the boredom award goes to…",
    bio2:
        "#repost #cute #amazi- ng #girlstyle #sweet #swag #kerala #india #malayalam #mallu",
    comments: "68 comments",
    isLike: true,
    isSaved: false,
    isShow: true,
    likeMsg: "Jane Cooper and 65,564 other’s",
    time: "2 hr ago",
  ),
];

List<HomeStoryShowDataModel> homeSuggestionList = [
  HomeStoryShowDataModel(
    title: "Eleanor 🔥",
    image: ImageCons.pic3,
    subtitle: "New to Chatgram",
    bio1: "Follow",
  ),
  HomeStoryShowDataModel(
    title: "DarleneOfficial.",
    image: ImageCons.pic1,
    subtitle: "Follows you",
    bio1: "Follow Back",
  ),
  HomeStoryShowDataModel(
    title: "Eleanor 🔥",
    image: ImageCons.pic3,
    subtitle: "New to Chatgram",
    bio1: "Follow",
  ),
  HomeStoryShowDataModel(
    title: "DarleneOfficial.",
    image: ImageCons.pic1,
    subtitle: "Follows you",
    bio1: "Follow Back",
  ),
];
List<HomeStoryShowDataModel> homeReelList = [
  HomeStoryShowDataModel(
    image: ImageCons.reelPic1,
  ),
  HomeStoryShowDataModel(
    image: ImageCons.reelPic2,
  ),
  HomeStoryShowDataModel(
    image: ImageCons.reelPic1,
  ),
  HomeStoryShowDataModel(
    image: ImageCons.reelPic2,
  ),
];
