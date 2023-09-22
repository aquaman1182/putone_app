import 'package:putone/model/music.dart';
import 'package:putone/model/user.dart';

import '../model/post.dart';

List<Music> mockMusicList = [
  Music(
    name: "水平線",
    artist: "back number",
    imagePath: "sample1",
    musicPath: 'suiheisen',
    description: "孤独感から助けてくれた曲",
  ),
  Music(
    name: "ファジーネーブル",
    artist: "Conton Candy",
    imagePath: "sample2",
    musicPath: 'faji_nable',
    description: "甘酸っぱい",
  ),
  Music(
    name: "逆夢",
    artist: "King Gnu",
    imagePath: "sample3",
    musicPath: 'sakayume',
    description: "アニメ→呪術廻戦0のループ",
  ),
  Music(
    name: "KICK BACK",
    artist: "米津玄氏",
    imagePath: "sample4",
    musicPath: 'kick_back',
    description: "頭から離れない",
  ),
  Music(
    name: "Super Shy",
    artist: "NewJeans",
    imagePath: "sample5",
    musicPath: 'super_shy',
    description: "最近K-POPきてる",
  ),
  Music(
    name: "L7 Blues",
    artist: "LANA",
    imagePath: "sample6",
    musicPath: 'l7_blues',
    description: "ヒップホップ初心者におすすめ",
  ),
  Music(
    name: "死ぬのがいいわ",
    artist: "藤井風",
    imagePath: "sample7",
    musicPath: 'shinunogaiiwa',
    description: "理想の自分とは",
  ),
  Music(
    name: "青のすみか",
    artist: "キタニタツヤ",
    imagePath: "sample8",
    musicPath: 'aonosumika',
    description: "イケボすぎて鳥肌！",
  ),
];

List<Post> mockPostList = [
  Post(
    name: "I\'m a mess",
    artist: "MY FIRST STORY",
    imagePath: "post_song_img1",
    comment: "遂に世間に見つかってしまった。メロディの流れがめちぇめちゃ颯爽感があってかっこいいし、サビ前がとにかく好き！",
    description: "とにかくかっこいい",
    musicPath: 'im_a_mess',
  ),
  Post(
    name: "燈",
    artist: "崎山蒼志",
    imagePath: "post_song_img2",
    comment:
        "呪術廻戦の2期のEDだけど、夏油の心情をすごく表してて、アニメに即しててまじで名曲だと思う。メロディは夏の終わりの夕方って感じがして、今の時期にぴったりだと思う。",
    description: "夏の終わりを感じる",
    musicPath: 'akari',
  ),
  Post(
    name: "唱",
    artist: "Ado",
    imagePath: "post_song_img3",
    comment: "USJのハロウィンのダンスと合わさって、めちぇめちゃかっこいい！",
    description: "ダンスがいい！",
    musicPath: 'show',
  ),
  Post(
    name: "貴方の恋人になりたい",
    artist: "チョーキューメイ",
    imagePath: "post_song_img4",
    comment:
        "最近の激推しバンド！ボーカルの声が本当に良すぎる。裏声の高くて繊細な感じと地声の低さのギャップがいい！他の曲もめちゃめちゃいいから聴いてほしい。",
    description: "激推しバンド",
    musicPath: 'anatanokoibitoninaritai',
  ),
  Post(
    name: "ランデヴー",
    artist: "シャイトープ",
    imagePath: "post_song_img5",
    comment: "夜の海辺を歩きながら、感傷に浸りながら聴いたら、たぶん泣いちゃうと思う。",
    description: "夜の海辺で聴きたい",
    musicPath: 'randevu',
  ),
  Post(
    name: "SPECIALZ",
    artist: "King Gnu",
    imagePath: "post_song_img6",
    comment: "呪術廻戦の渋谷事変のOPがマジでかっこいいからみんなに見てほしい！",
    description: "呪術廻戦えぐい！",
    musicPath: 'specialz',
  ),
  Post(
    name: "NIGHT DANCER",
    artist: "imase",
    imagePath: "post_song_img7",
    comment: "リズムがなんか頭から離れなくて、ずっと口ずさんじゃう。無意識にずっと歌ってる。",
    description: "頭から離れない",
    musicPath: 'night_dancer',
  ),
  Post(
    name: "NEW DANCE",
    artist: "XG",
    imagePath: "post_song_img8",
    comment: "ビジュもダンスも完璧すぎて、ほんとにかっこいい！世界で人気だし、J-POPを引っ張っていてほしい！",
    description: "世界で活躍しててすごい！",
    musicPath: 'new_dance',
  ),
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
