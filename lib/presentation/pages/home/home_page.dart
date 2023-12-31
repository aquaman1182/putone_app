import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:putone/components/music_post_card.dart';
import 'package:putone/components/user_icon_list.dart';
import 'package:putone/mock/mock_data.dart';
import 'package:putone/presentation/pages/post/post_music_page.dart';
import 'package:putone/presentation/pages/story/story_mucis_page.dart';
import 'package:putone/theme/app_color_theme.dart';
import 'package:tiktoklikescroller/tiktoklikescroller.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColorTheme.dark().mainColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Putone',
          style: GoogleFonts.getFont('Carter One'),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 8,
        ),
        child: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  UserIconList(
                    // FIXME: 遷移の仕方を変更する
                    onIconTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return TikTokStyleFullPageScroller(
                            contentSize: mockMusicList.length,
                            swipePositionThreshold: 0.2,
                            swipeVelocityThreshold: 2000,
                            animationDuration:
                                const Duration(milliseconds: 200),
                            builder: (BuildContext context, int index) {
                              return StoryMusicPage(
                                index: index,
                                music: mockMusicList[index],
                                user: mockUserList[index],
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  Gap(8),
                ],
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              sliver: SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 8,
                  crossAxisCount: 2,
                  // NOTE: childAspectRatio = 要素のWidth / 要素のHeight
                  childAspectRatio: 178 / 286,
                ),
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return MusicPostCard(
                      music: mockMusicList[index],
                      user: mockUserList[index],
                      onPostTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return PostMusicPage(
                              music: mockMusicList[index],
                              user: mockUserList[index],
                            );
                          },
                        ),
                      ),
                    );
                  },
                  childCount: mockMusicList.length,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Gap(64),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColorTheme.dark().mainColor,
        fixedColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: 1,
        iconSize: 30,
        onTap: (value) {},
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle_rounded), label: ""),
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
