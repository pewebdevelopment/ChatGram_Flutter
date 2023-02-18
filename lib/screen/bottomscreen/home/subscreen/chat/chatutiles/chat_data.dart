import 'package:instragramclone/constants/images.dart';

class ChatDataModel {
  String? image;
  String? title;
  String? subTitle;
  String? day;

  ChatDataModel({this.image, this.title, this.subTitle, this.day});
}

List<ChatDataModel> chatDataList = [
  ChatDataModel(
    image: ImageCons.pic1,
    subTitle: "good night ",
    day: "59 m",
    title: "Annette 🖤",
  ),
  ChatDataModel(
    image: ImageCons.pic2,
    subTitle: "Reacted 😂 to your massage. ",
    day: "13h",
    title: "Arlene McCoy",
  ),
  ChatDataModel(
    image: ImageCons.pic3,
    subTitle: "Seen 2h ago.",
    title: "Jerome Bell",
  ),
  ChatDataModel(
    image: ImageCons.pic4,
    subTitle: "Sent 13h ago.",
    title: "Theresa Webb",
  ),
  ChatDataModel(
    image: ImageCons.pic1,
    subTitle: "Sent 13h ago.",
    title: "Cody Fisher",
  ),
  ChatDataModel(
    image: ImageCons.pic2,
    subTitle: "Seen 11h ago.",
    title: "Robert Fox",
  ),
  ChatDataModel(
    image: ImageCons.pic3,
    subTitle: "ok . 5d",
    title: "Ralph Edwards",
  ),
  ChatDataModel(
    image: ImageCons.pic4,
    subTitle: "good night . 5d",
    title: "Savannah Nguyen",
  ),
  ChatDataModel(
    image: ImageCons.pic1,
    subTitle: "Mentioned you in a story . 5d",
    title: "Cameron Williamson",
  ),
];
List<ChatDataModel> callDataList = [
  ChatDataModel(
    image: ImageCons.pic1,
    subTitle: "Floyd Miles",
    title: "(2) 4 june, 3:14 pm",
    day: ImageCons.incoming,
  ),
  ChatDataModel(
    image: ImageCons.pic2,
    subTitle: "4 june, 2:50 pm",
    title: "Kathryn Murphy",
    day: ImageCons.outgoing,
  ),
  ChatDataModel(
    image: ImageCons.pic3,
    subTitle: "24 May, 1:53 pm",
    title: "Ralph Edwards",
    day: ImageCons.outgoing,
  ),
  ChatDataModel(
    image: ImageCons.pic4,
    subTitle: "20 May, 1:53 pm",
    title: "Wade Warren",
    day: ImageCons.outgoing,
  ),
  ChatDataModel(
    image: ImageCons.pic1,
    subTitle: "18 May, 8:12 pm",
    title: "Albert Flores",
    day: ImageCons.incoming,
  ),
  ChatDataModel(
    image: ImageCons.pic2,
    subTitle: "15 May, 11:50 pm",
    title: "Cody Fisher",
    day: ImageCons.outgoing,
  ),
  ChatDataModel(
    image: ImageCons.pic3,
    subTitle: "14 May, 2:51 pm",
    title: "Jane Cooper",
    day: ImageCons.outgoing,
  ),
  ChatDataModel(
    image: ImageCons.pic4,
    subTitle: "1o May, 6:37 pm",
    title: "Theresa Webb",
    day: ImageCons.incoming,
  ),
];
