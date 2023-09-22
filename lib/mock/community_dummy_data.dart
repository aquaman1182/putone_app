import 'package:putone/model/community.dart';
import 'package:putone/model/music.dart';
import 'package:putone/model/user.dart';

final String invitationAuthorize = '招待・承認制';
final String mailAuthorize = '大学メールアドレス認証';

List<Community> dummyCommunity = [
  Community(
    name: '理科大 音楽サークル',
    imagePath: 'tus_ms',
    authorize: invitationAuthorize,
    official: false,
  ),
  Community(
    name: '慶應義塾大学',
    imagePath: 'keio',
    authorize: mailAuthorize,
    official: true,
  ),
  Community(
    name: '法政大学 市谷キャンパス',
    imagePath: 'hosei',
    authorize: mailAuthorize,
    official: true,
  ),
  Community(
    name: '早稲田バドサークル',
    imagePath: 'badminton',
    authorize: invitationAuthorize,
    official: false,
  ),
  Community(
    name: '東京理科大学 経営学部',
    imagePath: 'tus_ms',
    authorize: mailAuthorize,
    official: true,
  ),
  Community(
    name: '上智大学 留学生グル',
    imagePath: 'international',
    authorize: invitationAuthorize,
    official: false,
  ),
  Community(
    name: '上智大学',
    imagePath: 'sofia',
    authorize: mailAuthorize,
    official: true,
  ),
  Community(
    name: '青山学院大学',
    imagePath: 'aoyama',
    authorize: mailAuthorize,
    official: true,
  ),
  Community(
    name: '明治大学',
    imagePath: 'meiji',
    authorize: mailAuthorize,
    official: true,
  ),
  Community(
    name: 'お茶の水女子大学',
    imagePath: 'ochanomizu',
    authorize: mailAuthorize,
    official: true,
  ),
];

List<Music> communityDummyMusicList = [
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

List<User> communityDummyUserList = [
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
];

List<List<String>> commynityDummyArtistList = [
  [
    'Saucy dog',
    'クリープハイプ',
    'マカロニえんぴつ',
    '乃木坂46',
  ],
  [
    'AI',
    'MISIA',
    '宇多田ヒカル',
    '安室奈美恵',
    'aiko',
    '...',
  ],
  [
    '椎名林檎',
    '東京事変',
    'milet',
    'Aimer',
    '藤井風',
    'miwa',
    '...',
  ],
  [
    'Ado',
    'Anly',
    'ONE OK ROCK',
    '緑黄色社会',
    'Superfly',
  ],
  [
    'Ado',
    'YOASOBI',
    '緑黄色社会',
    'ONE OK ROCK',
    'yama',
    '...',
  ],
  [
    'BUMP OF CHICKEN',
    'スピッツ',
    'コブクロ',
    'Mr.Children',
  ],
  [
    '百足&韻マン',
    'LEX',
    'Tohji',
    'LANA',
  ],
  [
    'ao',
    'milet',
    'Aimer',
    'imase',
    'YOASOBI',
  ],
];
