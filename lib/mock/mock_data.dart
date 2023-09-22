import 'package:putone/model/music.dart';
import 'package:putone/model/user.dart';

import '../model/post.dart';

List<Music> mockMusicList = [
  Music(
    name: "水平線",
    artist: "back number",
    imagePath: "sample1",
    description: "孤独感から助けてくれた曲",
  ),
  Music(
    name: "ファジーネーブル",
    artist: "Conton Candy",
    imagePath: "sample2",
    description: "甘酸っぱい",
  ),
  Music(
    name: "逆夢",
    artist: "King Gnu",
    imagePath: "sample3",
    description: "アニメ→呪術廻戦0のループ",
  ),
  Music(
    name: "KICK BACK",
    artist: "米津玄氏",
    imagePath: "sample4",
    description: "頭から離れない",
  ),
  Music(
    name: "Super Shy",
    artist: "NewJeans",
    imagePath: "sample5",
    description: "最近K-POPきてる",
  ),
  Music(
    name: "L7 Blues",
    artist: "LANA",
    imagePath: "sample6",
    description: "ヒップホップ初心者におすすめ",
  ),
  Music(
    name: "死ぬのがいいわ",
    artist: "藤井風",
    imagePath: "sample7",
    description: "理想の自分とは",
  ),
  Music(
    name: "青のすみか",
    artist: "キタニタツヤ",
    imagePath: "sample8",
    description: "イケボすぎて鳥肌！",
  ),
];

List<Post> mockPostList = [
  Post(name: "", artist: "", imagePath: "", comment: "", description: ""),
  Post(name: "", artist: "", imagePath: "", comment: "", description: ""),
  Post(name: "", artist: "", imagePath: "", comment: "", description: ""),
  Post(name: "", artist: "", imagePath: "", comment: "", description: ""),
  Post(name: "", artist: "", imagePath: "", comment: "", description: ""),
  Post(name: "", artist: "", imagePath: "", comment: "", description: ""),
  Post(name: "", artist: "", imagePath: "", comment: "", description: ""),
  Post(name: "", artist: "", imagePath: "", comment: "", description: ""),
];

List<User> mockUserList = [
  User(
    name: "なる",
    id: "naruogram",
    imagePath: "user_icon_sample.jpg",
    fakeIndex: 1,
  ),
  User(
    name: "たつや",
    id: "tatsuya",
    imagePath: "user1.png",
    fakeIndex: 4,
  ),
  User(
    name: "あゆ",
    id: "ayugram",
    imagePath: "user2.png",
    fakeIndex: 7,
  ),
  User(
    name: "こうき",
    id: "kouki_0505",
    imagePath: "user3.png",
    fakeIndex: 3,
  ),
  User(
    name: "ひな",
    id: "hinaprint",
    imagePath: "user4.png",
    fakeIndex: 10,
  ),
  User(
    name: "しゅん",
    id: "syunsan",
    imagePath: "user5.png",
    fakeIndex: 6,
  ),
  User(
    name: "ゆうご",
    id: "yugo0000",
    imagePath: "user6.png",
    fakeIndex: 5,
  ),
  User(
    name: "かずき",
    id: "kazuki1010",
    imagePath: "user7.png",
    fakeIndex: 4,
  ),
  User(
    name: "はるか",
    id: "haruka0224",
    imagePath: "user8.png",
    fakeIndex: 3,
  ),
  User(
    name: "りさ",
    id: "risalisa",
    imagePath: "user9.png",
    fakeIndex: 2,
  ),
];
