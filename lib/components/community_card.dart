import 'package:flutter/material.dart';

import 'package:putone/model/community.dart';
import 'package:putone/theme/app_color_theme.dart';
import 'package:putone/utill/constant.dart';

class CommunityCard extends StatelessWidget {
  CommunityCard({
    super.key,
    required this.community,
  });

  final Community community;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 60,
        width: 60,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Image.asset(
          AssetsExt.imagePath(community.imagePath),
          fit: BoxFit.cover,
        ),
      ),
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(community.name,
              softWrap: false, overflow: TextOverflow.ellipsis),
          if (community.official)
            Container(
              margin: EdgeInsets.only(left: 6),
              child: Icon(
                Icons.check_circle,
                color: AppColorTheme.dark().accentColor,
                size: 12,
              ),
            )
        ],
      ),
      subtitle: Text(community.authorize),
      trailing: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColorTheme.dark().accentColor),
        onPressed: () {},
        child: Text('参加'),
      ),
    );
  }
}
