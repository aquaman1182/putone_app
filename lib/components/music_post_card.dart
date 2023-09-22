import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:putone/components/user_icon.dart';
import 'package:putone/model/user.dart';
import 'package:putone/utill/constant.dart';

import '../model/post.dart';

class MusicPostCard extends StatelessWidget {
  final VoidCallback onPostTap;
  final User user;
  final Post post;
  const MusicPostCard({
    Key? key,
    required this.onPostTap,
    required this.user,
    required this.post,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPostTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          border: Border.all(
            color: Colors.black,
            width: 0.2,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _MusicPostCardHeader(
              user: user,
            ),
            _MusicImage(
              post: post,
            ),
            _MusicPostCardFooter(
              postTitle: post.description,
            ),
          ],
        ),
      ),
    );
  }
}

class _MusicPostCardHeader extends StatelessWidget {
  final User user;
  const _MusicPostCardHeader({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Row(
        children: [
          SizedBox(
            height: 36,
            child: UserCircleIcon(
              imagePath: user.imagePath,
            ),
          ),
          Gap(4),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                user.name,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                user.id,
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _MusicImage extends StatelessWidget {
  final Post post;

  const _MusicImage({
    Key? key,
    required this.post,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          AssetsExt.imagePath(
            post.imagePath,
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 60,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(0, 0, 0, 0),
                  Color.fromARGB(120, 0, 0, 0),
                  Color.fromARGB(180, 0, 0, 0),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 12,
          left: 8,
          child: Row(
            children: [
              SvgPicture.asset(
                AssetsExt.svgPath('music'),
              ),
              Gap(4),
              Container(
                width: 120,
                child: Text(
                  post.name,
                  softWrap: false,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              //Gap(48),
            ],
          ),
        ),
        Positioned(
          bottom: 12,
          right: 8,
          child: SvgPicture.asset(
            AssetsExt.svgPath('book_mark'),
          ),
        ),
      ],
    );
  }
}

class _MusicPostCardFooter extends StatelessWidget {
  final String postTitle;
  const _MusicPostCardFooter({
    Key? key,
    required this.postTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 4,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            postTitle,
            style: TextStyle(
              fontSize: 12,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Gap(8),
          Row(
            children: [
              SvgPicture.asset(
                AssetsExt.svgPath('heart'),
              ),
              Gap(4),
              SvgPicture.asset(
                AssetsExt.svgPath('comment'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
