import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:putone/components/user_icon.dart';
import 'package:putone/mock/mock_data.dart';

class UserIconList extends StatelessWidget {
  final VoidCallback onIconTap;

  const UserIconList({
    Key? key,
    required this.onIconTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          final user = mockUserList[index];
          return GestureDetector(
            onTap: onIconTap,
            child: Column(
              children: [
                UserCircleIcon(
                  size: 60,
                  imagePath: user.imagePath,
                ),
                Gap(4),
                Text(
                  user.id,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(width: 8);
        },
        padding: EdgeInsets.symmetric(
          horizontal: 8,
        ),
        itemCount: mockUserList.length,
      ),
    );
  }
}
