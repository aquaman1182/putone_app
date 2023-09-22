import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:putone/components/movie_indicator.dart';
import 'package:putone/components/user_icon.dart';
import 'package:putone/model/post.dart';
import 'package:putone/model/user.dart';
import 'package:putone/utill/constant.dart';
import 'package:blur/blur.dart';

class PostMusicPage extends StatefulWidget {
  final Post post;
  final User user;
  const PostMusicPage({
    Key? key,
    required this.post,
    required this.user,
  }) : super(key: key);

  @override
  State<PostMusicPage> createState() => _PostMusicPageState();
}

class _PostMusicPageState extends State<PostMusicPage> {
  final _audioPlayer = AudioPlayer();

  @override
  void initState() {
    super.initState();
    _audioPlayer.play(AssetSource(AssetsExt.musicPath(widget.post.musicPath)));
    //_audioPlayer.setReleaseMode(ReleaseMode.loop);
  }

  @override
  void dispose() {
    _audioPlayer.pause();
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Blur(
            blur: 10,
            blurColor: Colors.black12,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    AssetsExt.imagePath(widget.post.imagePath),
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 60,
              horizontal: 24,
            ),
            child: Column(
              children: [
                MovieIndicator(),
                Gap(12),
                _UserInfoHeader(
                  user: widget.user,
                ),
                Gap(width * 0.25),
                Image.asset(
                  AssetsExt.imagePath(widget.post.imagePath),
                  width: 272,
                  height: 272,
                ),
                Gap(24),
                Text(
                  widget.post.artist,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Gap(20),
                Text(
                  widget.post.name,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Gap(20),
                Text(
                  widget.post.comment,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Gap(width * 0.15),
                _MenuSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _UserInfoHeader extends StatelessWidget {
  final User user;
  const _UserInfoHeader({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        UserCircleIcon(
          size: 38,
          imagePath: user.imagePath,
        ),
        Gap(12),
        Text(
          user.id,
          style: TextStyle(
            fontSize: 14,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        Gap(12),
        Text(
          "${user.fakeIndex}時間前",
          style: TextStyle(
            fontSize: 14,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        Spacer(),
        GestureDetector(
          onTap: () => Navigator.pop(context),
          child: SvgPicture.asset(
            AssetsExt.svgPath('cross'),
            height: 20,
            width: 20,
            colorFilter: ColorFilter.mode(
              Colors.white,
              BlendMode.srcIn,
            ),
          ),
        ),
      ],
    );
  }
}

class _MenuSection extends StatelessWidget {
  const _MenuSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _CircleButton(
          svgTitle: 'heart_fill',
        ),
        Gap(16),
        _CircleButton(
          svgTitle: 'comment',
        ),
        Gap(16),
        _CircleButton(
          svgTitle: 'book_mark',
        ),
        Gap(16),
        _CircleButton(
          svgTitle: 'spotify',
        ),
      ],
    );
  }
}

class _CircleButton extends StatelessWidget {
  final String svgTitle;
  const _CircleButton({
    Key? key,
    required this.svgTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isHeart = svgTitle == 'heart_fill';
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      padding: EdgeInsets.all(8),
      height: 40,
      width: 40,
      child: SvgPicture.asset(
        AssetsExt.svgPath(svgTitle),
        colorFilter: ColorFilter.mode(
          isHeart ? Colors.red : Colors.black,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
